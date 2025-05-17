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
    };

    explicit BookModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex&) const override {
        return m_books.size();
    }

    QVariant data(const QModelIndex& index, int role) const override {
        if(!index.isValid() || index.row() >= m_books.size()){
            return {};
        }

        const auto& book = m_books[index.row()];
        if (role == TitleRole) return book->title();
        return {};
    }

    QHash<int, QByteArray> roleNames() const override {
        return {
                { TitleRole, "title"}
        };
    }

    void setBooks(const QVector<QSharedPointer<Book>> &books){
        beginResetModel();
        m_books = books;
        endResetModel();
    }

    void addBook(const QSharedPointer<Book> &book);

    void clear();

private:
    QVector<QSharedPointer<Book>> m_books;

signals:
};

#endif // BOOKMODEL_H
