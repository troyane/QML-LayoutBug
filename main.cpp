#include <QtGlobal>
#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QDebug>

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine(QUrl("qrc:///qml/spaceQuotas/main.qml"));
    QString ver(qVersion());
    qDebug() << "Version: " << qVersion();
    return app.exec();
}
