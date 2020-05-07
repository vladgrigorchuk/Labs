#include "lab1.h"
#include "cstdlib"
#include <QFile>
void Lab1::buttonClicked(int i)
{
    QObject* text4 = viewer->findChild<QObject*>("text4");

    QFile file1("/proc/meminfo");
    QFile file2("/proc/cpuinfo");
    QFile file3("/proc/devices");

    QByteArray data;

    if (!file1.open(QIODevice::ReadOnly)) // Проверяем, возможно ли открыть наш файл для чтения
        return; // если это сделать невозможно, то завершаем функцию
    if (!file2.open(QIODevice::ReadOnly)) // Проверяем, возможно ли открыть наш файл для чтения
        return; // если это сделать невозможно, то завершаем функцию
    if (!file3.open(QIODevice::ReadOnly)) // Проверяем, возможно ли открыть наш файл для чтения
        return; // если это сделать невозможно, то завершаем функцию

    if (i==0)
    data = file1.readAll(); //считываем все данные с файла в объект data
    if (i==1)
    data = file2.readAll(); //считываем все данные с файла в объект data
    if (i==2)
    data = file3.readAll(); //считываем все данные с файла в объект data

    QString strResult=QString(data); // Выводим данные в консоль, предварительно создав строку из полученных данных

    text4->setProperty("text", strResult);
}

