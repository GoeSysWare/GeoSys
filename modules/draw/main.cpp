#include <QApplication>
#include "src/plmainframe.h"
#include "src/plmainmodel.h"
#include "src/pltarget.h"
#include "cyber/cyber.h"
#include "modules/calc/include/k_bus.h"


PLMainFrame *gMainFrame;
PLMainModel *gMainModel;
PLTarget *gTarget;
std::shared_ptr<apollo::cyber::Node> gNode;

std::shared_ptr<apollo::cyber::Client<Bus::ProjectInfoReq, Bus::ProjectInfoRsp>> gclient_proj_info;
std::shared_ptr<apollo::cyber::Client<Bus::ProjectCmdReq, Bus::ProjectCmdRsp>> gclient_proj_cmd;
 std::shared_ptr<apollo::cyber::Client<Bus::ProjSnapshotReq, Bus::ProjSnapshotRsp>>  gclient_proj_snapshot;

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

     apollo::cyber::Init(argv[0]);
    gNode = std::move(apollo::cyber::CreateNode("robot_draw"));

    PLMainModel modMain;
    gMainModel = &modMain;

    PLTarget target;
    gTarget = &target;

    PLMainFrame frmMain;
    frmMain.show();
    gMainFrame = &frmMain;

    gclient_proj_info = bus_init_client_info(gNode);
    gclient_proj_cmd = bus_init_client_cmd(gNode);
    gclient_proj_snapshot = bus_init_client_snapshot(gNode);
    
    return app.exec();
}
