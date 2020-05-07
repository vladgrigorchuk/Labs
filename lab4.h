#ifndef LAB4_H
#define LAB4_H

#include <QObject>

#include <QDebug>

class Lab4 : public QObject
{
    Q_OBJECT
public:
    Lab4 (QObject *QMLObject) : viewer(QMLObject) {}

signals:

public slots:
    void buttonClicked();
protected:
    QObject *viewer;
};
#endif // LAB4_H
