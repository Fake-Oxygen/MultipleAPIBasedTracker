#ifndef APIMANAGER_H
#define APIMANAGER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonParseError>
#include <QJsonDocument>

#include "envmanager.h"

class APIManager : public QObject
{
    Q_OBJECT
public:
    explicit APIManager(QObject *parent = nullptr);
    virtual ~APIManager() = default;

protected:
    void Call(const QUrl &url);
    virtual void onJsonReady(const QJsonDocument &json) = 0;

protected:
    QUrl APICallURL;
    EnvManager *envManager;

private slots:
    void onReplyFinished();

private:
    QNetworkAccessManager *m_manager;
    QNetworkReply *m_currentReply;


signals:
};

#endif // APIMANAGER_H
