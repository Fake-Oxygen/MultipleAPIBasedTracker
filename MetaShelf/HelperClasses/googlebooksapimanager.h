#ifndef GOOGLEBOOKSAPIMANAGER_H
#define GOOGLEBOOKSAPIMANAGER_H

#include <QObject>
#include <QUrl>
#include <QJsonObject>
#include <QJsonArray>
#include <QSharedPointer>

#include "apimanager.h"
#include "../DataClasses/book.h"
#include "../DataClasses/bookmodel.h"

class GoogleBooksAPIManager : public APIManager
{
    Q_OBJECT
public:
    explicit GoogleBooksAPIManager(QObject *parent = nullptr);
    Q_INVOKABLE void searchBooks(QString searchTerm);

    BookModel *bookModel() {return &m_bookModel; };

private:
    void onJsonReady(const QJsonDocument &json) override;

private:
    BookModel m_bookModel;
};

#endif // GOOGLEBOOKSAPIMANAGER_H
