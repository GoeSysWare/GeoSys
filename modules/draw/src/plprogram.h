#ifndef PLPROGRAM_H
#define PLPROGRAM_H

#include <QList>
#include <QMutex>
#include <QSharedPointer>
#include "plfunctionblock.h"
#include "pllink.h"
#include "plvlink.h"

class PLProgram
{
public:
    PLProgram();
    PLProgram(const PLProgram&);
    ~PLProgram();
    int idMod;
    int id;
    int idLog;
    QString nameMod;
    QString name;
    QString desc;
    int type;
    unsigned int interval;
    QList<PLFunctionBlock> fbs;
    QList<PLLink> lks;
    QList<PLVLink> vis;
    QList<PLVLink> vos;
    QSharedPointer<QMutex> mutex;
};

#endif // PLPROGRAM_H
