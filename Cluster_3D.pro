QT += quick
QT += serialport
QT += widgets
QT += core
QT += quick3d
QT += 3dcore 3drender 3dinput 3dlogic


# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        uart.cpp

RESOURCES += qml.qrc \
    models.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    uart.h

DISTFILES += \
    threeD/mesh.mesh \
    threeD/mesh_001.mesh \
    threeD/mesh_002.mesh \
    threeD/mesh_003.mesh \
    threeD/mesh_004.mesh \
    threeD/mesh_006.mesh \
    threeD/mesh_007.mesh \
    threeD/mesh_008.mesh \
    threeD/mesh_009.mesh \
    threeD/mesh_010.mesh \
    threeD/mesh_011.mesh \
    threeD/mesh_012.mesh \
    threeD/mesh_013.mesh \
    threeD/mesh_014.mesh \
    threeD/mesh_016.mesh \
    threeD/mesh_017.mesh \
    threeD/mesh_018.mesh \
    threeD/mesh_019.mesh \
    threeD/mesh_023.mesh \
    threeD/mesh_024.mesh \
    threeD/mesh_025.mesh \
    threeD/mesh_026.mesh \
    threeD/mesh_027.mesh \
    threeD/mesh_028.mesh \
    threeD/mesh_029.mesh \
    threeD/mesh_030.mesh \
    threeD/mesh_032.mesh \
    threeD/mesh_033.mesh \
    threeD/mesh_034.mesh \
    threeD/mesh_035.mesh \
    threeD/mesh_037.mesh \
    threeD/mesh_038.mesh \
    threeD/mesh_039.mesh \
    threeD/mesh_040.mesh \
    threeD/mesh_041.mesh \
    threeD/mesh_042.mesh \
    threeD/mesh_043.mesh \
    threeD/mesh_044.mesh \
    threeD/mesh_045.mesh \
    threeD/mesh_046.mesh \
    threeD/mesh_047.mesh \
    threeD/mesh_048.mesh \
    threeD/mesh_049.mesh \
    threeD/mesh_050.mesh \
    threeD/mesh_051.mesh \
    threeD/mesh_052.mesh \
    threeD/mesh_053.mesh \
    threeD/mesh_054.mesh \
    threeD/mesh_055.mesh \
    threeD/mesh_056.mesh \
    threeD/mesh_057.mesh \
    threeD/mesh_058.mesh \
    threeD/mesh_059.mesh \
    threeD/mesh_060.mesh \
    threeD/mesh_061.mesh \
    threeD/mesh_062.mesh \
    threeD/mesh_063.mesh \
    threeD/mesh_066.mesh \
    threeD/mesh_067.mesh \
    threeD/mesh_068.mesh \
    threeD/mesh_069.mesh \
    threeD/mesh_070.mesh \
    threeD/mesh_071.mesh \
    threeD/mesh_072.mesh \
    threeD/mesh_073.mesh \
    threeD/mesh_074.mesh \
    threeD/mesh_075.mesh \
    threeD/mesh_079.mesh \
    threeD/mesh_080.mesh \
    threeD/mesh_081.mesh \
    threeD/mesh_082.mesh \
    threeD/mesh_083.mesh \
    threeD/mesh_084.mesh \
    threeD/mesh_085.mesh \
    threeD/mesh_086.mesh \
    threeD/mesh_087.mesh \
    threeD/mesh_088.mesh \
    threeD/mesh_089.mesh \
    threeD/mesh_090.mesh \
    threeD/mesh_091.mesh \
    threeD/mesh_092.mesh \
    threeD/mesh_093.mesh \
    threeD/mesh_094.mesh \
    threeD/mesh_095.mesh \
    threeD/mesh_096.mesh \
    threeD/mesh_097.mesh \
    threeD/mesh_098.mesh \
    threeD/mesh_099.mesh \
    threeD/mesh_100.mesh \
    threeD/mesh_101.mesh \
    threeD/mesh_102.mesh \
    threeD/mesh_103.mesh \
    threeD/mesh_104.mesh \
    threeD/mesh_105.mesh \
    threeD/mesh_106.mesh \
    threeD/mesh_107.mesh \
    threeD/mesh_108.mesh \
    threeD/mesh_109.mesh \
    threeD/mesh_110.mesh \
    threeD/mesh_111.mesh \
    threeD/mesh_112.mesh \
    threeD/mesh_113.mesh \
    threeD/mesh_114.mesh \
    threeD/plane.mesh
