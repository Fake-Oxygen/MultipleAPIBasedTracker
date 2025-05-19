#ifndef DATABASEMANAGER_H
#define DATABASEMANAGER_H

#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlError>

class DatabaseManager : public QObject
{
    Q_OBJECT
public:
    explicit DatabaseManager(QObject *parent = nullptr);

private:
    QSqlDatabase m_db = QSqlDatabase::addDatabase("QPSQL");
    QString m_hostname = "localhost";
    int m_port = 5432;
    QString m_databaseName = "MRTracker";
    QString m_username = "postgres";
    QString m_password = "admin";

signals:
};

#endif // DATABASEMANAGER_H
