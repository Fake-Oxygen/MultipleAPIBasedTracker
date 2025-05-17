#include "bookmodel.h"

BookModel::BookModel(QObject *parent)
    : QAbstractListModel{parent}
{}

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
