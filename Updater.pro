#-------------------------------------------------
#
# Project created by QtCreator 2013-09-14T13:57:34
# 
#-------------------------------------------------

QT       += core network gui 
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = updater
TEMPLATE = lib
CONFIG += staticlib
win32:DESTDIR += $$OUT_PWD

CONFIG(release, release|debug) {
    DEFINES -= WK2_DEBUG
    # We don't want the objects, or MOC sources
    # in the project directory, so tell qmake
    # where to put them
    unix:OBJECTS_DIR = obj/release.unix
    win32:OBJECTS_DIR = obj/release.win32
    MOC_DIR = moc/release
}

CONFIG(debug, debug|release) {
    DEFINES += WK2_DEBUG
    # We don't want the objects, or MOC sources
    # in the project directory, so tell qmake
    # where to put them
    unix:OBJECTS_DIR = obj/debug.unix
    win32:OBJECTS_DIR = obj/debug.win32
    MOC_DIR = moc/debug
}

INCLUDEPATH += include
SOURCES += src/Updater.cpp

HEADERS += include/Updater.hpp \
    include/Constants.hpp
