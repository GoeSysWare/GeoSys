#include "plcommand.h"
// #include "gdefine.h"
// #include "modules/calc/include/k_project.h"
#include <QStringList>

PLCommand::PLCommand() {}

PLCommand::PLCommand(Bus::EditInfo info) { editInfo = info; }

bool PLCommand::dispatch() {

  Bus::EditElement element = editInfo.element();

  if (element == Bus::EditElement::PROJ) {
    Bus::EditType type = editInfo.edit_type();
    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {
        // gMainModel->project.uuid = QString::fromStdString(editInfo.proj().proj_uuid());
    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }

  }

  else if (element == Bus::EditElement::MOD) {
    Bus::EditType type = editInfo.edit_type();
    if (type == Bus::EditType::ADD) {
        // PLModule mod;
        // setModule(&mod);
        // gMainModel->modList.append(mod);
    } else if (type == Bus::EditType::RM) {
        // removeModule(editInfo.mod().mod_id());
    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }

  }

  else if (element == Bus::EditElement::TASK) {
    Bus::EditType type = editInfo.edit_type();
    if (type == Bus::EditType::ADD) {
        // PLProgram prg;
        // setProgram(&prg);
        // for(int i=0; i<gMainModel->modList.size(); i++){
        //     if(gMainModel->modList.at(i).id == editInfo.task().mod_id()){
        //         // gMainModel->modList.at(i).prgList.append(std::move(prg));
        //     }
        // }
    } else if (type == Bus::EditType::RM) {
        // removeProgram(editInfo.task().mod_id(),editInfo.task().task_id());
    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }

  }

  else if (element == Bus::EditElement::EV) {
    Bus::EditType type = editInfo.edit_type();
    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }
  } else if (element == Bus::EditElement::IO) {
    Bus::EditType type = editInfo.edit_type();
    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }

  } else if (element == Bus::EditElement::FB) {
    Bus::EditType type = editInfo.edit_type();
    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }

  } else if (element == Bus::EditElement::LK) {
    Bus::EditType type = editInfo.lk().edit_type();
    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }

  } else if (element == Bus::EditElement::PIN) {
    Bus::EditType type = editInfo.edit_type();
    if (type == Bus::EditType::ADD) {

    } else if (type == Bus::EditType::RM) {

    } else if (type == Bus::EditType::SET) {

    } else if (type == Bus::EditType::SHOW) {

    } else if (type == Bus::EditType::MOVE) {

    } else if (type == Bus::EditType::COPY) {

    } else if (type == Bus::EditType::PASTE) {

    } else {
    }
  }

  return true;
}

// bool PLCommand::dispatch()
// {
//     if(fun == "addprg"){
//         PLProgram prg;
//         setProgram(&prg);
//         gMainModel->prgList.append(prg);
//         if(gMainModel->objID < prg.id){
//             gMainModel->objID = prg.id;
//         }
//     }else if(fun == "setprg"){
//         int id = para.toInt();
//         for(int i=0; i<gMainModel->prgList.size(); i++){
//             if(gMainModel->prgList.at(i).id == id){
//                 gMainModel->prgList[i].name = res;
//             }
//         }
//     }else if(fun == "rmprg"){
//         int id = para.toInt();
//         return removeProgram(id);
//     }else if(fun == "addfb"){
//         PLFunctionBlock fb;
//         setFunctionBlock(&fb);
//         PLProgram *prg = getProgram(fb.idPrg);
//         if(prg == NULL){
//             return false;
//         }

//         fb_t *p_fb = prj_fbfind(fb.idPrg, fb.id);
//         unsigned int i;
//         PLPin pin;
//         int h, w, wi=0, wo=0;
//         // input
//         for(i = 0; i < p_fb->ins.size(); i++){
//             pin.type = p_fb->ins[i].t;
//             pin.name = QString::fromStdString( p_fb->ins[i].pinname);
//             pin.value =  *(p_fb->ins[i].v);
//             fb.input.append(pin);
//             if(wi < pin.name.size()){
//                 wi = pin.name.size();
//             }
//         }
//         // output
//         for(i = 0; i < p_fb->outs.size(); i++){
//             pin.name = QString::fromStdString( p_fb->outs[i].pinname);
//             pin.value =  *(p_fb->outs[i].v);
//             fb.output.append(pin);
//             if(wo < pin.name.size()){
//                 wo = pin.name.size();
//             }
//         }

//         // property
//         for(i = 0; i < p_fb->props.size(); i++){
//             pin.name = QString::fromStdString( p_fb->props[i].pinname);
//             pin.value =  *(p_fb->props[i].v);
//             fb.property.append(pin);
//         }

//         fb.flag = p_fb->h.flag;

//         h = std::max(p_fb->ins.size(),p_fb->outs.size());

//         w = fb.funName.size() + 1;
//         if(w < (wi + wo + 2)){
//             w = wi + wo + 2;
//         }
//         fb.h = h + 1;
//         fb.w = w;

//         fb.isSelected = true;
//         prg->fbs.append(fb);
//         if(gMainModel->objID < fb.id){
//             gMainModel->objID = fb.id;
//         }
//     }else if(fun == "mvfb"){
//         QStringList list = para.split(",");
//         int idPrg = list.at(0).toInt();
//         int idFb = list.at(1).toInt();
//         PLProgram *prg = getProgram(idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         PLFunctionBlock *fb = getFunctionBlock(prg, idFb);
//         if(fb == NULL){
//             return false;
//         }
//         list = res.split(",");
//         fb->blkName = list.at(0);
//         fb->x = list.at(1).toInt();
//         fb->y = list.at(2).toInt();
//     }else if(fun == "rmfb"){
//         QStringList list = para.split(",");
//         int idPrg = list.at(0).toInt();
//         int idFb = list.at(1).toInt();
//         PLProgram *prg = getProgram(idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         return removeFunctionBlock(prg, idFb);
//     }else if(fun == "addlk"){
//         PLLink lk;
//         setLink(&lk, false);
//         PLProgram *prg = getProgram(lk.idPrg);
//         if(prg==NULL){
//             return false;
//         }
//         lk.isSelected = true;
//         if(!addLink(prg, &lk)){
//             return false;
//         }
//         if(gMainModel->objID < lk.id){
//             gMainModel->objID = lk.id;
//         }
//     }else if(fun == "mvlk"){
//         QStringList list = para.split(",");
//         int idPrg = list.at(0).toInt();
//         int idLk = list.at(1).toInt();
//         PLProgram *prg = getProgram(idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         PLLink *lk = getLink(prg, idLk);
//         if(lk == NULL){
//             return false;
//         }
//         setLink(lk, true);
//     }else if(fun == "rmlk"){
//         QStringList list = para.split(",");
//         int idPrg = list.at(0).toInt();
//         int idLk = list.at(1).toInt();
//         PLProgram *prg = getProgram(idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         return removeLink(prg, idLk);
//     }else if(fun == "addev"){
//         PLEVData ev;
//         setEVData(&ev);
//         gMainModel->evList.append(ev);
//         if(gMainModel->objID < ev.id){
//             gMainModel->objID = ev.id;
//         }
//     }else if(fun == "rmev"){
//         QStringList list = para.split(",");
//         int id = list.at(0).toInt();
//         return removeEVData(id);
//     }else if(fun == "addvi"){
//         PLVLink vi;
//         setVLink(&vi);
//         PLProgram *prg = getProgram(vi.idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         if(!addVLinkInput(prg, &vi)){
//             return false;
//         }
//         if(gMainModel->objID < vi.id){
//             gMainModel->objID = vi.id;
//         }
//     }else if(fun == "rmvi"){
//         QStringList list = para.split(",");
//         int idPrg = list.at(0).toInt();
//         int idVi = list.at(1).toInt();
//         PLProgram *prg = getProgram(idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         return removeVLinkInput(prg, idVi);
//     }else if(fun == "addvo"){
//         PLVLink vo;
//         setVLink(&vo);
//         PLProgram *prg = getProgram(vo.idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         if(!addVLinkOutput(prg, &vo)){
//             return false;
//         }
//         if(gMainModel->objID < vo.id){
//             gMainModel->objID = vo.id;
//         }
//     }else if(fun == "rmvo"){
//         QStringList list = para.split(",");
//         int idPrg = list.at(0).toInt();
//         int idVo = list.at(1).toInt();
//         PLProgram *prg = getProgram(idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         return removeVLinkOutput(prg, idVo);
//     }else if(fun == "setpin"){
//         QStringList list = para.split(",");
//         int idPrg = list.at(0).toInt();
//         int idFb = list.at(1).toInt();
//         int pin = list.at(2).toInt();
//         QString val = list.at(3);
//         PLProgram *prg = getProgram(idPrg);
//         if(prg == NULL){
//             return false;
//         }
//         PLFunctionBlock *fb = getFunctionBlock(prg, idFb);
//         if(fb == NULL){
//             return false;
//         }

//         value_tm *v = &fb->input[pin].value;
//         *v = str2var(std::string(val.toLatin1()));

//     }else if(fun == "setev"){
//         QStringList list = para.split(",");
//         int id = list.at(0).toInt();
//         QString val = list.at(1);
//         PLEVData *ev = NULL;
//         for(int i=0; i<gMainModel->evList.size(); i++){
//             if(gMainModel->evList.at(i).id == id){
//                 ev = &gMainModel->evList[i];
//                 break;
//             }
//         }
//         ev->initValue  = str2var(std::string(val.toLatin1()));
//         ev->value = ev->initValue;
//         list = res.split(",");
//         ev->name = list.at(0);
//         ev->comment = list.at(1);
//     }else if(fun == "setprj"){
//         gMainModel->project.uuid = para;
//     }

//     gMainModel->isModified = true;

//     return true;
// }

void PLCommand::setModule(PLModule *mod) {
//   mod->id = editInfo.mod().mod_id();
//   mod->name = editInfo.mod().mod_name();
//   mod->desc = editInfo.mod().mod_desc();
//   mod->uuid = editInfo.mod().mod_uuid();

}


void PLCommand::setProgram(PLProgram *prg) {
//   prg->id = editInfo.task().task_id();
//   prg->name = editInfo.task().task_name();
//   prg->desc = editInfo.task().task_desc();
}


bool PLCommand::removeModule(int modId) {
//   for (int i = 0; i < gMainModel->modList.size(); i++) {
//     if (gMainModel->modList.at(i).id == id) {
//       gMainModel->modList.removeAt(i);
//       return true;
//     }
//   }
  return false;
}
bool PLCommand::removeProgram(int modId,int prgId) {
//   for (int i = 0; i < gMainModel->modList.size(); i++) {
//     if (gMainModel->modList.at(i).id == modId) {
//         PLModule & mod = gMainModel->modList.at(i);
//         for (int j = 0; i < mod.prgList.size(); j++) {
//             if (mod->prgList.at(i).id == prgId) {
//             mod->prgList.removeAt(i);
//             return true;
//             }
//         }
//     }
//   }
  return false;
}

PLEVData *PLCommand::getEv(int id) {
//   for (int i = 0; i < gMainModel->evList.size(); i++) {
//     if (gMainModel->evList.at(i).id == id) {
//       return &gMainModel->evList[i];
//     }
//   }

  return NULL;
}

PLProgram *PLCommand::getProgram(int id) {
//   for (int i = 0; i < gMainModel->prgList.size(); i++) {
//     if (gMainModel->prgList.at(i).id == id) {
//       return &gMainModel->prgList[i];
//     }
//   }

  return NULL;
}

void PLCommand::setFunctionBlock(PLFunctionBlock *fb) {
//   QStringList list = para.split(",");
//   fb->idPrg = list.at(0).toInt();
//   fb->id = list.at(1).toInt();
//   fb->libName = list.at(2);
//   fb->funName = list.at(3);

//   list = res.split(",");
//   fb->blkName = list.at(0);
//   fb->x = list.at(1).toInt();
//   fb->y = list.at(2).toInt();
}

PLFunctionBlock *PLCommand::getFunctionBlock(PLProgram *prg, int id) {
//   for (int i = 0; i < prg->fbs.size(); i++) {
//     if (prg->fbs.at(i).id == id) {
//       return &prg->fbs[i];
//     }
//   }

  return NULL;
}

bool PLCommand::removeFunctionBlock(PLProgram *prg, int id) {
//   for (int i = 0; i < prg->fbs.size(); i++) {
//     if (prg->fbs.at(i).id == id) {
//       prg->fbs.removeAt(i);
//       return true;
//     }
//   }

  return false;
}

void PLCommand::setLink(PLLink *lk, bool onlyRes) {
//   QStringList list;
//   if (!onlyRes) {
//     list = para.split(",");
//     lk->idPrg = list.at(0).toInt();
//     lk->id = list.at(1).toInt();
//     lk->idFbSrc = list.at(2).toInt();
//     lk->pinSrc = list.at(3).toInt();
//     lk->idFbTgt = list.at(4).toInt();
//     lk->pinTgt = list.at(5).toInt();
//   }

//   lk->pts.clear();
//   int x, y;
//   list = res.split(",");
//   // return;
//   QStringList vlist;
//   for (int i = 0; i < list.size() - 1; i++) {
//     vlist = list.at(i).split("/");
//     x = vlist.at(0).toInt();
//     y = vlist.at(1).toInt();
//     PLPoint pt(x, y);
//     lk->pts.append(pt);
//   }
}

PLLink *PLCommand::getLink(PLProgram *prg, int id) {
//   for (int i = 0; i < prg->lks.size(); i++) {
//     if (prg->lks.at(i).id == id) {
//       return &prg->lks[i];
//     }
//   }

  return NULL;
}

bool PLCommand::removeLink(PLProgram *prg, int id) {
//   for (int i = 0; i < prg->lks.size(); i++) {
//     if (prg->lks.at(i).id == id) {
//       PLFunctionBlock *fb = getFunctionBlock(prg, prg->lks.at(i).idFbTgt);
//       fb->input[prg->lks.at(i).pinTgt].hasInputLink = false;

//       prg->lks.removeAt(i);
//       return true;
//     }
//   }

  return false;
}

bool PLCommand::addLink(PLProgram *prg, PLLink *lk) {
//   PLFunctionBlock *fb;
//   fb = getFunctionBlock(prg, lk->idFbSrc);
//   if (fb == NULL) {
//     return false;
//   }
//   if (lk->pinSrc >= fb->output.size()) {
//     return false;
//   }
//   lk->pin = &fb->output[lk->pinSrc];

//   fb = getFunctionBlock(prg, lk->idFbTgt);
//   if (fb == NULL) {
//     return false;
//   }
//   if (lk->pinTgt >= fb->input.size()) {
//     return false;
//   }
//   fb->input[lk->pinTgt].hasInputLink = true;

//   prg->lks.append(*lk);
  return true;
}

void PLCommand::setEVData(PLEVData *ev) {
//   QStringList list = para.split(",");
//   ev->id = list.at(0).toInt();
//   QString type = list.at(1);
//   QString value = list.at(2);
//   list = res.split(",");
//   ev->name = list.at(0);
//   ev->comment = list.at(1);
//   ev->refIn = 0;
//   ev->refOut = 0;

//   v_type t;

//   t = str2type(std::string(type.toLatin1()));

//   value_tm v;
//   v = str2var(std::string(value.toLatin1()));

//   ev->initValue = v;
//   ev->value = ev->initValue;
}

bool PLCommand::removeEVData(int id) {
//   for (int i = 0; i < gMainModel->evList.size(); i++) {
//     if (gMainModel->evList.at(i).id == id) {
//       gMainModel->evList.removeAt(i);
//       return true;
//     }
//   }

  return false;
}

void PLCommand::setVLink(PLVLink *vlk) {
//   QStringList list;
//   list = para.split(",");
//   vlk->idPrg = list.at(0).toInt();
//   vlk->id = list.at(1).toInt();
//   vlk->idEv = list.at(2).toInt();
//   vlk->idFb = list.at(3).toInt();
//   vlk->idPin = list.at(4).toInt();
//   ;
}

bool PLCommand::addVLinkInput(PLProgram *prg, PLVLink *vlk) {
//   bool b1 = false, b2 = false;
//   int i;
//   for (i = 0; i < prg->fbs.size(); i++) {
//     if (vlk->idFb == prg->fbs.at(i).id) {
//       vlk->fb = &prg->fbs[i];
//       if (prg->fbs.at(i).input.size() <= vlk->idPin) {
//         return false;
//       }
//       vlk->pin = &prg->fbs[i].input[vlk->idPin];
//       vlk->pin->hasVariable = true;
//       b1 = true;
//       break;
//     }
//   }

//   for (i = 0; i < gMainModel->evList.size(); i++) {
//     if (vlk->idEv == gMainModel->evList.at(i).id) {
//       vlk->ev = &gMainModel->evList[i];
//       gMainModel->evList[i].refIn++;
//       b2 = true;
//       break;
//     }
//   }

//   if (b1 && b2) {
//     vlk->isInput = true;
//     prg->vis.append(*vlk);
//     return true;
//   } else {
//     return false;
//   }
return false;
}

bool PLCommand::removeVLinkInput(PLProgram *prg, int id) {
//   for (int i = 0; i < prg->vis.size(); i++) {
//     if (prg->vis.at(i).id == id) {
//       prg->vis[i].ev->refIn--;
//       prg->vis[i].pin->hasVariable = false;
//       prg->vis.removeAt(i);
//       return true;
//     }
//   }

  // qDebug() << "remove vi";
  return false;
}

bool PLCommand::addVLinkOutput(PLProgram *prg, PLVLink *vlk) {
//   bool b1 = false, b2 = false;
//   int i;
//   for (i = 0; i < prg->fbs.size(); i++) {
//     if (vlk->idFb == prg->fbs.at(i).id) {
//       vlk->fb = &prg->fbs[i];
//       if (prg->fbs.at(i).output.size() <= vlk->idPin) {
//         return false;
//       }
//       vlk->pin = &prg->fbs[i].output[vlk->idPin];
//       vlk->pin->hasVariable = true;
//       b1 = true;
//       break;
//     }
//   }

//   for (i = 0; i < gMainModel->evList.size(); i++) {
//     if (vlk->idEv == gMainModel->evList.at(i).id) {
//       vlk->ev = &gMainModel->evList[i];
//       gMainModel->evList[i].refOut++;
//       b2 = true;
//       break;
//     }
//   }

//   if (b1 && b2) {
//     vlk->isInput = false;
//     prg->vos.append(*vlk);
//     return true;
//   } else {
//     return false;
//   }
return false;
}

bool PLCommand::removeVLinkOutput(PLProgram *prg, int id) {
//   for (int i = 0; i < prg->vos.size(); i++) {
//     if (prg->vos.at(i).id == id) {
//       prg->vos[i].ev->refOut--;
//       prg->vos[i].pin->hasVariable = false;
//       prg->vos.removeAt(i);
//       return true;
//     }
//   }

  // qDebug() << "remove vo";
  return false;
}