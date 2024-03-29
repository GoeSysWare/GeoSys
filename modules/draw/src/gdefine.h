#ifndef GDEFINE_H
#define GDEFINE_H

#include "plmainframe.h"
#include "plmainmodel.h"
#include "pltarget.h"
#include "cyber/cyber.h"

extern PLMainFrame *gMainFrame;
extern PLMainModel *gMainModel;
extern PLTarget *gTarget;
extern std::shared_ptr<apollo::cyber::Node> gNode;

extern std::shared_ptr<apollo::cyber::Client<Bus::ProjectInfoReq, Bus::ProjectInfoRsp>> gclient_proj_info;
extern std::shared_ptr<apollo::cyber::Client<Bus::ProjectCmdReq, Bus::ProjectCmdRsp>> gclient_proj_cmd;



extern std::shared_ptr<apollo::cyber::Client<Bus::ProjSnapshotReq, Bus::ProjSnapshotRsp>>  gclient_proj_snapshot;
#endif // GDEFINE_H
