#ifndef MAIN_HPP
#define MAIN_HPP

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTextStream>

class testClass : public QObject
{
    Q_OBJECT
    public:
    explicit testClass(QObject *parent = nullptr){}
public slots:
    void write(QString string) {
        QTextStream out(stdout);
        out << string << endl;
    }
};

#endif // MAIN_HPP

