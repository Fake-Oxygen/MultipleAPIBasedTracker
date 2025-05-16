#include "googlebooksapimanager.h"

GoogleBooksAPIManager::GoogleBooksAPIManager(QObject *parent)
    : APIManager{parent}
{

}

void GoogleBooksAPIManager::SearchBooks(QString searchTerm){
    APICallURL = QString("https://www.googleapis.com/books/v1/volumes?q=%1&key=%2").arg(searchTerm, envManager->googleBooksAPIkey());
    Call(APICallURL);

    //Handle json
}

void GoogleBooksAPIManager::onJsonReady(const QJsonDocument &json){
    qDebug() << json;
}
