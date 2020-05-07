    TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp \
    lab1.cpp \
    lab4.cpp \
    lab3.cpp

RESOURCES += qml.qrc \
    images.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    lab1.h \
    lab4.h \
    lab3.h
