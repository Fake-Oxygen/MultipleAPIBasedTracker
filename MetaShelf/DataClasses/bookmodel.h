#ifndef BOOKMODEL_H
#define BOOKMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QVector>
#include <QSharedPointer>
#include <QVariant>
#include <QHash>

#include "book.h"

class BookModel : public QAbstractListModel
{
    Q_OBJECT
public:

    enum BookRoles {
        TitleRole = Qt::UserRole + 1,
        ThumbnailRole,
        AuthorsRole,
    };

    explicit BookModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex&) const override {
        return m_books.size();
    }

    QVariant data(const QModelIndex& index, int role) const override;

    QHash<int, QByteArray> roleNames() const override;

    void setBooks(const QVector<QSharedPointer<Book>> &books){
        beginResetModel();
        m_books = books;
        endResetModel();
    }

    void addBook(const QSharedPointer<Book> &book);

    void clear();



    QVector<QSharedPointer<Book> > books() const;

private:
    QVector<QSharedPointer<Book>> m_books;

signals:
};

#endif // BOOKMODEL_H
