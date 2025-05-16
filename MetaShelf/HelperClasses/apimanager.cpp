#include "apimanager.h"

APIManager::APIManager(QObject *parent)
    : QObject{parent}, m_manager(new QNetworkAccessManager(this)), envManager(new EnvManager(this))
{}

void APIManager::Call(const QUrl &url){
    QNetworkRequest request(url);
    m_currentReply = m_manager->get(request);
    connect(m_currentReply, &QNetworkReply::finished, this, &APIManager::onReplyFinished);
}

void APIManager::onReplyFinished()
{
    if(m_currentReply->error() != QNetworkReply::NoError){
        qWarning() << "Request Failed: " << m_currentReply->errorString();
        return;
    }

    QByteArray data = m_currentReply->readAll();
    QJsonParseError parseError;
    QJsonDocument json = QJsonDocument::fromJson(data, &parseError);
    m_currentReply->deleteLater();

    if(parseError.error != QJsonParseError::NoError){
        qWarning() << "Json parse error: " << parseError.errorString();
        return;
    }

    if(!json.isObject()){
        qWarning() << "Invalid json root";
        return;
    }

    qDebug() << "Json received succesfully";
    onJsonReady(json);
}
