#ifndef LAB1_H
#define LAB1_H

#include <QObject>

#include <QDebug>

class Lab1 : public QObject
{
    Q_OBJECT
public:
    Lab1 (QObject *QMLObject) : viewer(QMLObject) {}

signals:

public slots:
    void buttonClicked(int i);
protected:
    QObject *viewer;
};
#endif // LAB1_H
