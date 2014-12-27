TARGET = harbour-owncloud-daemon

CONFIG -= gui
CONFIG += c++11

QT += dbus network xml

SOURCES += main.cpp \
    uploader.cpp \
    filesystem.cpp \
    ../common/src/settings.cpp \
    uploadentry.cpp

HEADERS += \
    filesystem.h \
    uploader.h \
    ../common/src/settings.h \
    uploadentry.h

LIBS += $$OUT_PWD/../qwebdavlib/qwebdavlib/libqwebdav.so.1

QMAKE_RPATHDIR += /usr/share/harbour-owncloud/libs

INCLUDEPATH += $$PWD/../common/src
DEPENDPATH += $$PWD/../common/src

INCLUDEPATH += $$PWD/../qwebdavlib/qwebdavlib
DEPENDPATH += $$PWD/../qwebdavlib/qwebdavlib

DEFINES += QWEBDAVITEM_EXTENDED_PROPERTIES