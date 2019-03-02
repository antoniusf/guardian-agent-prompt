#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <main.hpp>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<testClass>("stdoutwriter", 1, 0, "Writer");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

