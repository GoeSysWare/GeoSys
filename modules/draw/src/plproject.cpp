#include <QUuid>
#include "plproject.h"

PLProject::PLProject()
{
    name = "rotbot-engine-project";
    clear();
}

void PLProject::clear()
{    
    uuid = QUuid::createUuid().toString();
    fileName.clear();
}

void PLProject::renewUuid()
{
    uuid = QUuid::createUuid().toString();
}

QString PLProject::description()
{
    return desc;
}

QString PLProject::getUuid()
{
    return uuid;
}

