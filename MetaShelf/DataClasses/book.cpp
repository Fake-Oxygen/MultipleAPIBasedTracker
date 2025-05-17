#include "book.h"

Book::Book(QObject *parent)
    : Media{parent}
{}

QSharedPointer<Book> Book::fromJson(const QJsonObject &obj)
{
    QSharedPointer<Book> book = QSharedPointer<Book>::create();
    QJsonObject volumeInfo = obj.value("volumeInfo").toObject();
    QJsonObject imageLinks = volumeInfo.value("imageLinks").toObject();

    book->m_title = volumeInfo.value("title").toString();
    book->m_thumbnailLink = imageLinks.value("thumbnail").toString();
    book->m_kind = obj.value("kind").toString();

    if (book->m_thumbnailLink == QUrl(""))
        book->m_thumbnailLink = QUrl("../assets/images/missing-cover.png");

    QJsonArray authors = volumeInfo.value("authors").toArray();
    for(const QJsonValue &v : authors){
        book->m_authorsList.append(v.toString());
    }

    book->m_authors = book->m_authorsList.join(", ");

    return book;
}
