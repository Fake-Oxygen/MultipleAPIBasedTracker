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

    return book;
}
