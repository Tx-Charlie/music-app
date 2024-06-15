#-------------------------------------------------
#
# Project created by QtCreator 2017-01-01T12:45:59
#
#-------------------------------------------------

QT       += core gui printsupport svg

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ps6
TEMPLATE = app


SOURCES += \
    src/configdialog.cpp\
    src/main.cpp\
    # src/nash.cpp\
    src/nashville.cpp \
    src/widget.cpp \
    src/rectangle.cpp \
    src/title.cpp \
    src/logo.cpp \
    src/cursor.cpp \
    src/page.cpp \
    src/note.cpp \
    src/legato.cpp \
    src/slide.cpp \
    src/settings.cpp \
    src/nash.cpp \
    src/chord.cpp \
    src/symboldialog.cpp \
    src/line.cpp \
    src/element.cpp


HEADERS  += \
    src/global.h \
    src/configdialog.h \
    src/widget.h \
    src/rectangle.h \
    src/title.h \
    src/logo.h \
    src/cursor.h \
    src/page.h \
    src/note.h \
    src/legato.h \
    src/slide.h \
    src/settings.h \
    # src/nash.h \
    src/nashville.h \
    src/nash.h \
    src/chord.h \
    src/symboldialog.h \
    src/line.h \
    src/element.h

DISTFILES +=

RESOURCES += \
    resources/resources.qrc
