#include "cyber/time/time.h"
#include <google/protobuf/text_format.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "modules/calc/include/k_datatype.h"
#include "modules/calc/include/k_evdata.h"
#include "modules/calc/include/k_util.h"

static evnode_t vn_head = {&vn_head, &vn_head, 0, "", nullptr};
static evnode_t *p_vn_select = &vn_head;

std::string type2str(v_type it) { return v_type_Name(it); }

void vam_init(vam_t &vam, v_type t, std::string u, std::string value) {

  vam.reset(new value_tm);
  vam->set_tm(apollo::cyber::Time::Now().ToNanosecond());
  vam->set_t(t);
  vam->clear_v();
  // switch (t) {
  // case T_NONE:
  //   break;
  // case T_BOOL:
  //   vam->mutable_v()->set_b(value == "false" || value == "0"? false:true);
  //   break;
  // case T_INT32:
  //   vam->mutable_v()->set_i(std::stoi(value.empty()? "0":value));
  //   break;
  // case T_UINT32:
  //   vam->mutable_v()->set_ui((uint32_t)std::stoul(value.empty()? "0":value));
  //   break;
  // case T_INT64:
  //   vam->mutable_v()->set_ll(std::stoll(value.empty()? "0":value));
  //   break;
  // case T_UINT64:
  //   vam->mutable_v()->set_ull(std::stoull(value.empty()? "0":value));
  //   break;
  // case T_FLOAT32:
  //   vam->mutable_v()->set_i(std::stof(value.empty()? "0":value));
  //   break;
  // case T_FLOAT64:
  //   vam->mutable_v()->set_d(std::stod(value.empty()? "0":value));
  //   break;
  // case T_TIME:
  //   vam->mutable_v()->set_tm(std::stoull(value.empty()? "0":value));
  //   break;
  // case T_STRING:
  //   vam->mutable_v()->set_str(value.empty()? "defualt":value);
  //   break;
  // case T_BYTES:
  //   vam->mutable_v()->set_blob(value);
  //   break;
  // case T_IMAGE:
  //   vam->mutable_v()->mutable_img()->set_data(value);
  //   break;
  // case T_LIDAR:
  //   vam->mutable_v()->set_lidar(value);
  //   break;
  // case T_SONAR:
  //   vam->mutable_v()->set_sonar(value);
  //   break;
  // case T_FILE:
  //   vam->mutable_v()->set_file(value);
  //   break;
  // case T_ANY:
  //   vam->mutable_v()->mutable_any()->set_type_url(u.empty()? "defualt":u);
  //   vam->mutable_v()->mutable_any()->set_value(value);
  //   break;
  // default:
  //   break;
  // }
}

v_type str2type(const std::string &str) {
  v_type it;
  v_type_Parse(str, &it);
  return it;
}

std::string var2str(const value_tm &v) { return v.SerializeAsString(); }

value_tm str2var(const std::string &str) {
  value_tm v;
  v.ParseFromString(str);
  return std::move(v);
}

int setvar(vam_t vam, v_type t, value_tm val) {
  if (t != val.t()) {
    return -1;
  }
  vam->CopyFrom(val);
  return 0;
}

value_tm setvar(v_type t, std::string value) {
  value_tm vam;
  vam.set_tm(apollo::cyber::Time::Now().ToNanosecond());
  vam.set_t(t);
  if(value.empty()){
    vam.clear_v();
    return std::move(vam);
  }
  switch (t) {
  case v_type::T_BOOL:
    vam.mutable_v()->set_b(
        value == "false" || value == "FALSE" || value == "0" ? false : true);
    break;
  case v_type::T_INT32:
    vam.mutable_v()->set_i(std::stoi(value));
    break;
  case v_type::T_UINT32:
    vam.mutable_v()->set_ui((uint32_t)std::stoul(value));
    break;
  case v_type::T_INT64:
    vam.mutable_v()->set_ll(std::stoll(value));
    break;
  case v_type::T_UINT64:
    vam.mutable_v()->set_ull((uint32_t)std::stoull(value));
    break;
  case v_type::T_FLOAT32:
    vam.mutable_v()->set_f((float)std::stof(value));
    break;
  case v_type::T_FLOAT64:
    vam.mutable_v()->set_d(std::stof(value));
    break;
  case v_type::T_TIME:
    vam.mutable_v()->set_tm(std::stoull(value));
    break;
  case v_type::T_STRING:
    vam.mutable_v()->set_str(value);
    break;
  case v_type::T_BYTES:
    vam.mutable_v()->set_blob(value);
    break;
  case v_type::T_IMAGE:
    break;
  case v_type::T_LIDAR:
    break;
  case v_type::T_SONAR:
    break;
  case v_type::T_FILE:
    vam.mutable_v()->set_file(value);
    break;
  default:;
  }
  return std::move(vam);
}

static evnode_t *v_new() {
  evnode_t *p_ev = new evnode_t;
  p_ev->v.reset(new value_tm);
  return p_ev;
}

static void v_delete(evnode_t *p_ev) {
  p_ev->v.reset();
  delete p_ev;
}

static void v_addbefore(evnode_t *p, evnode_t *p_ref) {
  p->p_prev = p_ref->p_prev;
  p->p_next = p_ref;
  p_ref->p_prev->p_next = p;
  p_ref->p_prev = p;
}

static void v_addafter(evnode_t *p, evnode_t *p_ref) {
  p->p_prev = p_ref;
  p->p_next = p_ref->p_next;
  p_ref->p_next->p_prev = p;
  p_ref->p_next = p;
}

static void v_remove(evnode_t *p) {
  p->p_prev->p_next = p->p_next;
  p->p_next->p_prev = p->p_prev;
}

static int ev_select(int id) {
  evnode_t *p_v;

  if (id == 0) {
    p_vn_select = &vn_head;
    return -1;
  }

  if (p_vn_select->id == id) {
    return 0;
  }

  p_v = vn_head.p_next;
  while (p_v != &vn_head) {
    if (p_v->id == id) {
      p_vn_select = p_v;
      return 0;
    }
    p_v = p_v->p_next;
  }

  return -1;
}

vam_t *ev_find_v(int id) {
  if (ev_select(id) == 0) {
    return &p_vn_select->v;
  }
  return nullptr;
}
evnode_t *ev_find_n(int id) {
  if (ev_select(id) == 0) {
    return p_vn_select;
  }
  return nullptr;
}
int ev_add(int id, const std::string &str, const std::string &name) {
  evnode_t *p_vn;

  p_vn = v_new();
  if (p_vn == 0) {
    return -1;
  }

  p_vn->id = id;
  p_vn->name = name;
  p_vn->v->CopyFrom(str2var(str));

  v_addbefore(p_vn, &vn_head);

  return 0;
}
int ev_add(int id, const std::string &name, const value_tm &val) {
  evnode_t *p_vn;

  p_vn = v_new();
  if (p_vn == 0) {
    return -1;
  }
  p_vn->id = id;
  p_vn->name = name;
  p_vn->v->CopyFrom(val);

  v_addbefore(p_vn, &vn_head);

  return 0;
}
int ev_remove(int id) {
  ev_select(id);

  if (p_vn_select == &vn_head) {
    return -1;
  }

  v_remove(p_vn_select);
  v_delete(p_vn_select);
  p_vn_select = &vn_head;

  return 0;
}

void ev_reset() {
  evnode_t *p_vn, *p_del;

  p_vn_select = &vn_head;

  p_vn = vn_head.p_next;
  while (p_vn != &vn_head) {
    p_del = p_vn;
    p_vn = p_vn->p_next;
    v_remove(p_del);
    v_delete(p_del);
  }

  //  tag_ev_reset();//qss for calc
}

evnode_t *ev_gethead() { return &vn_head; }

void ev_dump() {
  std::string value;
  evnode_t *p_vn;

  p_vn_select = &vn_head;

  p_vn = vn_head.p_next;
  std::cout << "Every Variant Table:" << std::endl;
  while (p_vn != &vn_head) {
    std::cout << "ev: " << p_vn->id << "- " << p_vn->name << ": "
              << p_vn->v->ShortDebugString() << std::endl;
    p_vn = p_vn->p_next;
  }
}

int ev_img_size() {
  int s;
  evnode_t *p_vn;

  s = 0;
  p_vn = vn_head.p_next;
  while (p_vn != &vn_head) {
    s++;
    p_vn = p_vn->p_next;
  }
  return s;
}

int ev_to_snapshot(Bus::ProjSnapshotReq *snapshot_req,
                   Bus::ProjSnapshotRsp *snapshot) {
  evnode_t *p_vn;
  p_vn = vn_head.p_next;
  bool is_upload = true;

  while (p_vn != &vn_head) {
    //对大内存数据类型特殊处理
    if (IS_NOT_UPLOAD_TYPE(p_vn->v->t())) {

      //如果请求中含有需要上传的ev
      is_upload = false;
      for (auto id : snapshot_req->evs()) {
        if (id == p_vn->id) {
          is_upload = true;
          break;
        }
      }
      if (is_upload) {
        Bus::EVNodeSnapshot *val_sp = snapshot->add_evs();
        val_sp->set_ev_id(p_vn->id);
        apollo::cyber::base::ReadLockGuard<apollo::cyber::base::ReentrantRWLock>
            lock(p_vn->mutex);
        val_sp->mutable_val()->CopyFrom(*(p_vn->v));
      }
      p_vn = p_vn->p_next;
      continue;
    }
    Bus::EVNodeSnapshot *val_sp = snapshot->add_evs();
    val_sp->set_ev_id(p_vn->id);
    apollo::cyber::base::ReadLockGuard<apollo::cyber::base::ReentrantRWLock>
        lock(p_vn->mutex);
    val_sp->mutable_val()->CopyFrom(*(p_vn->v));
    p_vn = p_vn->p_next;
  }
  return 0;
}

int ev_from_snapshot(Bus::ProjSnapshotRsp *snapshot) {
  evnode_t *p_vn;
  int i = 0;
  bool is_upload = true;
  if(snapshot->evs_size() <= 0){
    return 0;
  }
  p_vn = vn_head.p_next;
  while (p_vn != &vn_head) {
    if (IS_NOT_UPLOAD_TYPE(p_vn->v->t())) {

      //如果请求中含有需要上传的ev
      is_upload = false;
      for (auto id : snapshot->ev_id()) {
        if (id == p_vn->id) {
          is_upload = true;
          break;
        }
      }
      if (is_upload) {
        p_vn->id = snapshot->mutable_evs(i)->ev_id();
        apollo::cyber::base::WriteLockGuard<
            apollo::cyber::base::ReentrantRWLock>
            lock(p_vn->mutex);
        p_vn->v.get()->CopyFrom(snapshot->mutable_evs(i)->val());
        i++;
      }

      p_vn = p_vn->p_next;
      continue;
    }
    p_vn->id = snapshot->mutable_evs(i)->ev_id();
    apollo::cyber::base::WriteLockGuard<apollo::cyber::base::ReentrantRWLock>
        lock(p_vn->mutex);
    p_vn->v.get()->CopyFrom(snapshot->mutable_evs(i)->val());
    p_vn = p_vn->p_next;
    i++;
  }
  return 0;
}
