#include "lab3.h"
#include "cstdlib"
#include <QProcess>
#include <iostream>
#include <QString>
#include <QDebug>
#include <QtGui>
#include "QtTest/QTest"
#include "unistd.h"

void Lab3::buttonClicked()
{
    QObject* text3 = viewer->findChild<QObject*>("text3");

    QProcess qqq;

    QMutex mutex;
    mutex.lock();
    mutex.tryLock(1000);
    mutex.unlock();

    qqq.start("xset q");
    qqq.waitForFinished();
    QString outpot(qqq.readAllStandardOutput());
    QStringList List = outpot.split("\n");
    outpot = List.at(3);
    List = outpot.split("   ");
    outpot = List.at(1)+" "+List.at(2)+"\n"+List.at(3)+List.at(4);
    text3->setProperty("text", outpot);
    return;
}

void Lab3::buttonClicked1()
{
    QMutex mutex;
    mutex.lock();
    mutex.tryLock(1000);
    mutex.unlock();

    system("xdotool key Caps_Lock");
    system("xdotool key Num_Lock");
}

void Lab3::buttonClicked2()
{

        QProcess qqq;
        qqq.start("xset q");
        qqq.waitForFinished();
        QString outpot(qqq.readAllStandardOutput());
        QStringList List = outpot.split("\n");
        outpot = List.at(3);
        List = outpot.split("   ");
        if (List.at(2)=="off")
        {
            system("xdotool key Caps_Lock");

        }//else
        if (List.at(4)==" off")
        {
            system("xdotool key Num_Lock");

        }
        sleep(4);
        system("xdotool key Caps_Lock");
        system("xdotool key Num_Lock");


}




