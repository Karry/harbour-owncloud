#ifndef SHAREDSTATECONTROLLER_H
#define SHAREDSTATECONTROLLER_H

#include <QObject>
#include "settings/nextcloudsettingsbase.h"
#include "accountworkergenerator.h"
#include "commands/sync/ncdirtreecommandunit.h"

class SharedStateController : public QObject
{
    Q_OBJECT
public:
    explicit SharedStateController(QObject *parent = nullptr);
    bool requestDirectoryListing(AccountBase* account,
                                 QString subPath);
    virtual AccountWorkerGenerator* generator() = 0;

signals:
    void operationRequest(AccountBase* account, QString subPath);

private slots:
    void operation(AccountBase* account, QString subPath);

private:
    QSharedPointer<NcDirNode> m_cachedTree;
};

#endif // SHAREDSTATECONTROLLER_H
