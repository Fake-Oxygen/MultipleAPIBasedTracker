#ifndef BOOK_H
#define BOOK_H

#include <QObject>
#include <QJsonObject>
#include <QSharedPointer>

#include "media.h"

class Book : public Media
{
    Q_OBJECT
public:
    explicit Book(QObject *parent = nullptr);
    static QSharedPointer<Book> fromJson(const QJsonObject &obj);


signals:
};

#endif // BOOK_H
