#include "lab4.h"
#include "cstdlib"
#include <QFile>
#include <QProcess>
#include <iostream>

void Lab4::buttonClicked()
{
    QFile file("/home/vlad/setserial.txt");
    QByteArray data;

    QObject* text5 = viewer->findChild<QObject*>("text5");
    QObject* text41 = viewer->findChild<QObject*>("text41");

    QString strResult=(text41->property("text")).toString();

    system("echo 123456 | sudo -S setserial -a /dev/ttyS0 >/home/vlad/setserial.txt");
    if (!file.open(QIODevice::ReadOnly)) // Проверяем, возможно ли открыть наш файл для чтения
        return; // если это сделать невозможно, то завершаем функцию
    data = file.readAll(); //считываем все данные с файла в объект data
    QString data1=QString(data);
    file.close();

    system("echo 123456 | sudo -S setserial /dev/ttyS0 baud_base 57600 >/home/vlad/setserial.txt");

    system("echo 123456 | sudo -S setserial -a /dev/ttyS0 >/home/vlad/setserial.txt");
    if (!file.open(QIODevice::ReadOnly)) // Проверяем, возможно ли открыть наш файл для чтения
        return; // если это сделать невозможно, то завершаем функцию
    data = file.readAll(); //считываем все данные с файла в объект data
    QString data2=QString(data);
    file.close();

    text5->setProperty("text", strResult+"\n\n                                                Изменение скорости через setserial\n"+
                       "\necho 123456 | sudo -S setserial -a /dev/ttyS0\n"+data1+
                       "\necho 123456 | sudo -S setserial /dev/ttyS0 baud_base 57600\n"+
                       "\necho 123456 | sudo -S setserial -a /dev/ttyS0\n"+data2);
}
