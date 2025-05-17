#ifndef MEDIA_H
#define MEDIA_H

#include <QObject>
#include <QUrl>

class Media : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString title READ title CONSTANT)

public:
    explicit Media(QObject *parent = nullptr);


    QUrl thumbnailLink() const;

    QString title() const;
    QString kind() const {return m_kind; };
    void setTitle(QString title) {m_title = title; };

protected:
    QString m_title;
    QUrl m_thumbnailLink;
    QString m_kind;

signals:
};

#endif // MEDIA_H
