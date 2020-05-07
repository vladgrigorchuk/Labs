#ifndef LAB3_H
#define LAB3_H

#include <QObject>
#include <QDebug>

class Lab3 : public QObject
{
    Q_OBJECT
public:
    Lab3 (QObject *QMLObject) : viewer(QMLObject) {}

signals:

public slots:
    void buttonClicked();
    void buttonClicked1();
    void buttonClicked2();
protected:
    QObject *viewer;
};


#endif // LAB3_H
