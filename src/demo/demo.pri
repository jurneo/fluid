TEMPLATE = app
TARGET = ui-demo

QT += gui qml quick quickcontrols2 svg

SOURCES += $$PWD/main.cpp \
    $$PWD/device.cpp \
    $$PWD/iconsimageprovider.cpp \
    $$PWD/iconthemeimageprovider.cpp
RESOURCES += $$PWD/demo.qrc

INCLUDEPATH += C:/workspace/apps/fluid/src/imports
LIBS += -LC:/workspace/apps/fluid/qml/Fluid/Core -lfluidcoreplugind

OTHER_FILES += \
    $$files(qml/core/*.qml) \
    $$files(qml/controls/*.qml) \
    $$files(qml/*.qml) \
    $$files(qml/+material/*.qml) \
    $$files(qml/+universal/*.qml) \
    $$files(qml/Pages/Basic/*.qml) \
    $$files(qml/Pages/Compound/*.qml) \
    $$files(qml/Pages/Style/*.qml) \
    $$files(qml/Pages/Layouts/*.qml) \
    $$files(qml/Pages/Material/*.qml) \
    $$files(qml/Pages/Navigation/*.qml)

HEADERS += \
    $$PWD/device.h \
    $$PWD/iconsimageprovider.h \
    $$PWD/iconthemeimageprovider.h

