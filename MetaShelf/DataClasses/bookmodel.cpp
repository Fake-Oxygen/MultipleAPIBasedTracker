#include "bookmodel.h"

BookModel::BookModel(QObject *parent)
    : QAbstractListModel{parent}
{}

QVariant BookModel::data(const QModelIndex &index, int role) const
{
    if(!index.isValid() || index.row() >= m_books.size()){
        return {};
    }

    const auto& book = m_books[index.row()];
    if (role == TitleRole) return book->title();
    if (role == ThumbnailRole) return book->thumbnailLink();
    if (role == AuthorsRole) return book->authors();
    return {};
}

QHash<int, QByteArray> BookModel::roleNames() const
{
    return {
        { TitleRole, "title"},
        { ThumbnailRole, "thumbnail"},
        { AuthorsRole, "authors"}
    };
}

void BookModel::addBook(const QSharedPointer<Book> &book)
{
    beginInsertRows(QModelIndex(), m_books.size(), m_books.size());
    m_books.append(book);
    endInsertRows();
}

void BookModel::clear() {
    beginResetModel();
    m_books.clear();
    endResetModel();
}

QVector<QSharedPointer<Book> > BookModel::books() const
{
    return m_books;
}
