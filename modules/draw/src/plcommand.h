#ifndef PLCOMMAND_H
#define PLCOMMAND_H

#include <QString>
#include "plmodule.h"
#include "plprogram.h"
#include "plfunctionblock.h"
#include "plevdata.h"
#include "plvlink.h"


#include "modules/calc/proto/edit.pb.h"

class PLCommand
{
public:
    PLCommand();
    PLCommand(Bus::EditInfo  info);
    bool dispatch();

    
    Bus::EditInfo editInfo;

    static PLEVData *getEv(int id);
    static PLProgram *getProgram(int id);
    static PLFunctionBlock *getFunctionBlock(PLProgram *prg, int id);
    static PLLink *getLink(PLProgram *prg, int id);

    void setModule(PLModule *mod);
    static bool removeModule(int modId);
    
    void setProgram(PLProgram *prg);
    static bool removeProgram(int modId,int prgId);

    void setFunctionBlock(PLFunctionBlock *fb);
    static bool removeFunctionBlock(PLProgram *prg, int id);

    void setLink(PLLink *lk, bool onlyRes);
    static bool removeLink(PLProgram *prg, int id);
    static bool addLink(PLProgram *prg, PLLink *lk);

    void setEVData(PLEVData *ev);
    static bool removeEVData(int id);

    void setVLink(PLVLink *vlk);
    static bool addVLinkInput(PLProgram *prg, PLVLink *vlk);
    static bool removeVLinkInput(PLProgram *prg, int id);
    static bool addVLinkOutput(PLProgram *prg, PLVLink *vlk);
    static bool removeVLinkOutput(PLProgram *prg, int id);
};

#endif // PLCOMMAND_H