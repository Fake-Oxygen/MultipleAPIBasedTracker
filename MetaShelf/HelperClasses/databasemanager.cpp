#include "databasemanager.h"

DatabaseManager::DatabaseManager(QObject *parent)
    : QObject{parent}
{
    m_db.setHostName(m_hostname);
    m_db.setPort(m_port);
    m_db.setDatabaseName(m_databaseName);
    m_db.setUserName(m_username);
    m_db.setPassword(m_password);

    if (!m_db.open()){
        qDebug() << "Failed to connect: " << m_db.lastError().text();
    }else{
        qDebug() << "Database connected!";
    }
}
