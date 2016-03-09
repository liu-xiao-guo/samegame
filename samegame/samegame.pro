TEMPLATE = app
TARGET = samegame

QT += qml quick

SOURCES += main.cpp

RESOURCES += samegame.qrc

OTHER_FILES += samegame.apparmor \
               samegame.desktop \
               samegame.png

#specify where the config files are installed to
config_files.path = /samegame
config_files.files += $${OTHER_FILES}
message($$config_files.files)
INSTALLS+=config_files

# Default rules for deployment.
include(../deployment.pri)

