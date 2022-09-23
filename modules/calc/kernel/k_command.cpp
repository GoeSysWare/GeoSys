#include "modules/calc/include/k_command.h"
#include "modules/calc/include/k_evdata.h"
#include "modules/calc/include/k_lib.h"
#include "modules/calc/include/k_project.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int cmd_dispatch(const Bus::EditInfo &edit_info) {

  Bus::EditElement element = element;

  if (element == Bus::EditElement::PROJ) {
    Bus::EditType type = edit_info.proj().edit_type();
    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {
      prjinfo_t *info;
      info = prj_info();
      info->uuid = edit_info.proj().proj_uuid();
    } else if (type == Bus::EditType::SHOW) {

    } else {
    }

  } else if (element == Bus::EditElement::MOD) {
    Bus::EditType type = edit_info.mod().edit_type();

    if (type == Bus::EditType::ADD) {
      prj_modadd(edit_info.mod().mod_id(), edit_info.mod().mod_name(),
                 edit_info.mod().mod_desc());

    } else if (type == Bus::EditType::RM) {
      prj_modremove(edit_info.mod().mod_id());

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else {
    }
  } else if (element == Bus::EditElement::TASK) {
    Bus::EditType type = edit_info.task().edit_type();

    if (type == Bus::EditType::ADD) {

      prj_prgadd(edit_info.task().mod_id(), edit_info.task().task_id(),
                 edit_info.task().task_name(), edit_info.task().task_type(),
                 edit_info.task().task_desc(), edit_info.task().interval());

    } else if (type == Bus::EditType::RM) {
      prj_prgremove(edit_info.task().mod_id(), edit_info.task().task_id());
    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else {
    }
  } else if (element == Bus::EditElement::EV) {
    Bus::EditType type = edit_info.ev().edit_type();

    if (type == Bus::EditType::ADD) {
      ev_add(edit_info.ev().ev_id(), edit_info.ev().ev_name(),
             edit_info.ev().val());

    } else if (type == Bus::EditType::RM) {
      ev_remove(edit_info.ev().ev_id());

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else {
    }
  } else if (element == Bus::EditElement::IO) {
    Bus::EditType type = edit_info.io().edit_type();

    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else {
    }
  } else if (element == Bus::EditElement::FB) {
    Bus::EditType type = edit_info.fb().edit_type();

    if (type == Bus::EditType::ADD) {
      prj_fbadd(edit_info.fb().mod_id(), edit_info.fb().task_id(),
                edit_info.fb().fb_id(), edit_info.fb().flib_name(),
                edit_info.fb().fc_name(), edit_info.fb().fb_name());

    } else if (type == Bus::EditType::RM) {
      prj_fbremove(edit_info.fb().mod_id(), edit_info.fb().task_id(),
                   edit_info.fb().fb_id());
    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else {
    }
  } else if (element == Bus::EditElement::LK) {
    Bus::EditType type = edit_info.lk().edit_type();

    if (type == Bus::EditType::ADD) {
      prj_lkadd(edit_info.lk().mod_id(), edit_info.lk().task_id(),
                edit_info.lk().lk_id(), edit_info.lk().src_fb_id(),
                edit_info.lk().src_pin_index(), edit_info.lk().target_fb_id(),
                edit_info.lk().target_pin_index());
    } else if (type == Bus::EditType::RM) {
      prj_lkremove(edit_info.lk().mod_id(), edit_info.lk().task_id(),
                   edit_info.lk().lk_id());
    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else {
    }
  } else if (element == Bus::EditElement::PIN) {
    Bus::EditType type = edit_info.pin().edit_type();

    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {

      fb_t *p_fb;
      p_fb = prj_fbfind(edit_info.pin().mod_id(), edit_info.pin().task_id(),
                        edit_info.pin().fb_id());

      fb_setpin(p_fb, PININPUT, edit_info.pin().pin_index(),
                edit_info.pin().pin_val());

    } else if (type == Bus::EditType::SHOW) {

    } else {
    }
  }

  return 0;
}

int cmds_dispatch(Bus::EditInfos &edit_infos) {

  int info_size = edit_infos.infos_size();
  for (auto i = 0; i < info_size; i++) {
    prjinfo_t *info = prj_info();
    if (info->id_cmd < edit_infos.id_cmd()) {
      info->id_cmd = edit_infos.id_cmd();
    }
    cmd_dispatch(edit_infos.infos(i));
  }

  return 0;
}

int cmds_load(char *buf, int len) {
  FILE *f;
  int l;
  f = fopen(DEFCTRLFILE, "rb");
  if (f == NULL) {
    return -1;
  }

  l = fread(buf, 1, len, f);
  buf += l;
  *buf = 0;

  fclose(f);
  return l + 1;
}

int cmds_reset() {
  FILE *f;
  f = fopen(DEFCTRLFILE, "wb");
  if (f == 0) {
    return -1;
  }

  fclose(f);

  return 0;
}

int cmds_append(char *buf, int len) {
  FILE *f;
  f = fopen(DEFCTRLFILE, "ab");
  if (f == 0) {
    return -1;
  }

  fwrite(buf, 1, len, f);
  fclose(f);

  return 0;
}
