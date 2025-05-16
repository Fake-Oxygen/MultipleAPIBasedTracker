#ifndef ENVMANAGER_H
#define ENVMANAGER_H

#include <QObject>
#include <QUrl>

class EnvManager : public QObject
{
    Q_OBJECT
public:
    explicit EnvManager(QObject *parent = nullptr);


    QString googleBooksAPIkey() const;

private:
    QString m_googleBooksAPIkey;

signals:
};

#endif // ENVMANAGER_H
