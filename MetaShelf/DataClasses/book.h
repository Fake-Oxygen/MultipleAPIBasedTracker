#ifndef BOOK_H
#define BOOK_H

#include <QObject>
#include <QJsonObject>
#include <QSharedPointer>
#include <QJsonArray>

#include "media.h"

class Book : public Media
{
    Q_OBJECT
public:
    explicit Book(QObject *parent = nullptr);
    static QSharedPointer<Book> fromJson(const QJsonObject &obj);

    QStringList authorsList() {return m_authorsList; };
    QString authors() { return m_authors; };

protected:
    QStringList m_authorsList;
    QString m_authors;

signals:
};

#endif // BOOK_H
