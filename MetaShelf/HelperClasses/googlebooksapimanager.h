#ifndef GOOGLEBOOKSAPIMANAGER_H
#define GOOGLEBOOKSAPIMANAGER_H

#include <QObject>
#include <QUrl>

#include "apimanager.h"


class GoogleBooksAPIManager : public APIManager
{
    Q_OBJECT
public:
    explicit GoogleBooksAPIManager(QObject *parent = nullptr);
    void SearchBooks(QString searchTerm);

private:
    void onJsonReady(const QJsonDocument &json) override;
};

#endif // GOOGLEBOOKSAPIMANAGER_H
