#include "googlebooksapimanager.h"

GoogleBooksAPIManager::GoogleBooksAPIManager(QObject *parent)
    : APIManager{parent}
{

}

void GoogleBooksAPIManager::searchBooks(QString searchTerm){
    APICallURL = QString("https://www.googleapis.com/books/v1/volumes?q=intitle:%1&maxResults=%2&key=%3").arg(searchTerm, "40", envManager->googleBooksAPIkey());
    Call(APICallURL);

    //Handle json
}

void GoogleBooksAPIManager::onJsonReady(const QJsonDocument &json){
    QJsonObject root = json.object();

    QJsonArray items = root.value("items").toArray();
    m_bookModel.clear();

    for (const QJsonValue &v : items){
        if(v.isObject()){
            m_bookModel.addBook(Book::fromJson(v.toObject()));
        }
    }

    for (const QSharedPointer<Book> &book : m_bookModel.books()){
        qDebug() << book->kind();
    }
}
