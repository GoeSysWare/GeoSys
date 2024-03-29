#ifndef k_evdata_h
#define k_evdata_h

#include "cyber/base/reentrant_rw_lock.h"
#include "modules/calc/proto/snapshot.pb.h"
#include "modules/calc/proto/value.pb.h"
typedef std::shared_ptr<value_t> var_t;
typedef std::shared_ptr<value_tm> vam_t;

#define IS_NOT_UPLOAD_TYPE(type)                         \
  (type == v_type::T_FILE || type == v_type::T_IMAGE ||  \
   type == v_type::T_LIDAR || type == v_type::T_SONAR  ||  \
   type == v_type::T_BYTES )
/* Variable Node */
typedef struct EVNode {
  struct EVNode *p_prev;
  struct EVNode *p_next;
  int id;
  std::string name;
  vam_t v;
  apollo::cyber::base::ReentrantRWLock mutex;
} evnode_t;

std::string type2str(v_type it);
v_type str2type(const std::string &str);
//这个是proto的二进制string
std::string var2str(const value_tm &v);
value_tm str2var(const std::string &str);

//这个是明文可读的string
value_tm setvar(v_type t, std::string value);

void vam_init(vam_t &vam, v_type t, std::string u, std::string value);

vam_t *ev_find_v(int id);
evnode_t *ev_find_n(int id);
int ev_add(int id, const std::string &val, const std::string &name);
int ev_add(int id, const std::string &name, const value_tm &val);

int ev_remove(int id);
void ev_reset();
void ev_dump();
evnode_t *ev_gethead();
int ev_img_size();

int ev_to_snapshot(Bus::ProjSnapshotReq *snapshot_req,
                   Bus::ProjSnapshotRsp *snapshot);
int ev_from_snapshot(Bus::ProjSnapshotRsp *snapshot);

// char *ev_to_img(char *buf);
// char *ev_from_img(char *buf);

#endif
