#include "envmanager.h"

EnvManager::EnvManager(QObject *parent)
    : QObject{parent}
{
    m_googleBooksAPIkey = qgetenv("GOOGLE_BOOKS_API_KEY");
}

QString EnvManager::googleBooksAPIkey() const
{
    return m_googleBooksAPIkey;
}
