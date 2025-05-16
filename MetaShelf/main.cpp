#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "HelperClasses/googlebooksapimanager.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/MetaShelf/Main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    GoogleBooksAPIManager api;
    api.SearchBooks(QString("konosuba"));

    return app.exec();
}
