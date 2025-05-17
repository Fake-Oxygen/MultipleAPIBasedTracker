#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSharedPointer>
#include <QtSql/QSqlDatabase>
#include <QFile>
#include <QDirIterator>

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

    engine.rootContext()->setContextProperty("googleBooksAPI", &api);
    engine.rootContext()->setContextProperty("bookModel", api.bookModel());

    qDebug() << QSqlDatabase::drivers();

    return app.exec();
}
