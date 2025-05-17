#include "media.h"

Media::Media(QObject *parent)
    : QObject{parent}
{}

QUrl Media::thumbnailLink() const
{
    return m_thumbnailLink;
}

QString Media::title() const
{
    return m_title;
}
