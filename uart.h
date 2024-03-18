#ifndef UART_H
#define UART_H

#include "qserialport.h"
#include "qtimer.h"
#include <QMainWindow>
#include <QObject>
#include <QQuickItem>
#include <QSharedDataPointer>
#include <QWidget>
#include <QLocale>
#include <QGuiApplication>


#include <QSerialPort>
#include <QSerialPortInfo>
#include <cstdint>
#include <QTranslator>


#include <QTimer>

class UART : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString emptyString READ getEmptyString NOTIFY languageChanged)
    Q_PROPERTY(QString hour READ hour NOTIFY timeUpdated)
    Q_PROPERTY(QString minute READ minute NOTIFY timeUpdated)
    Q_PROPERTY(QString second READ second NOTIFY timeUpdated)
    Q_PROPERTY(QString amPm READ amPm NOTIFY timeUpdated)

public:

    enum Waring_Signs : quint8 {
        NoWarnings = 0,
        FogLightFrontON,
        PowerSteeringFailure,
        BrakeFailure,
        CruiseControlON,
        KeyMissing,
        HighBeamON,
        TPMSLowFrontLeft,
        TPMSLowFrontRight,
        TPMSLowRearLeft,
        TPMSLowRearRight,
        ExteriorLightFault,
        SeatBeltDriver,
        SeatBeltPassenger,
        ServiceDue,
        AirbagFailure,
        DoorOpenDriver,
        DoorOpenPassenger,
        DoorOpenRearLeft,
        DoorOpenRearRight,
        BonnetOpen,
        BootOpen,
    };
    //---------------Languages----------
    enum E_Languages
    {
        NoLanguage=0,
        ENG =1,
        GER = 2,
        CHI = 3,
        FRA = 4,
        SPA = 5,
    };
    enum TrafficSign: quint8
    {
        Nodisplay=0,
        Speedlimit_5,
        Speedlimit_10,
        Speedlimit_15,
        Speedlimit_20,
        Speedlimit_25,
        Speedlimit_30,
        Speedlimit_35,
        Speedlimit_40,
        Speedlimit_45,
        Speedlimit_50,
        Speedlimit_55,
        Speedlimit_60,
        Speedlimit_65,
        Speedlimit_70,
        Speedlimit_75,
        Speedlimit_80,
        Speedlimit_85,
        Speedlimit_90,
        Speedlimit_95,
        Speedlimit_100,
        Speedlimit_105,
        Speedlimit_110,
        Speedlimit_115,
        Speedlimit_120,
        Speedlimit_125,
        Speedlimit_130,
        Speedlimit_135,
        Speedlimit_140,
        Speedlimit_145,
        Speedlimit_150,
        Speedlimit_155,
        Speedlimit_160,
        Speedlimit_165,
        Speedlimit_170,
        Speedlimit_175,
        Speedlimit_180,
        Speedlimit_185,
        Speedlimit_190,
        Speedlimit_195,
        Speedlimit_200,
        Speedlimit_205,
        Speedlimit_210,
        Speedlimit_215,
        Speedlimit_220,
        Speedlimit_225,
        Speedlimit_230,
        Speedlimit_235,
        Speedlimit_240,
        Speedlimit_245,
        Speedlimit_250,
        BendLeft,
        BendRight,
        CrossRoad,
        Danger,
        DoubleBendLeft,
        DoubleBendRight,
        Infant,
        NoEntry,
        NoCrossingLeft,
        NoCrossingRight,
        NoCrossingTruckLeft,
        NoCrossingTruckRight,
        Pedestrians,
        RailRoad,
        RoadNarrow,
        RoadNarrowLeft,
        RoadNarrowRight,
        RoadWorks,
        ExitOnly,
        UnevenRoad,
        TurnLeft,
        TurnRight,
        WorkZone,
        DoNotPass,
    };

    enum DayNightMode:bool{
        Day=0,
        Night,
    };

    enum Region:quint8{
        EU=0,
        NA,
    };

    enum SpeedUnit: bool{
        Kmph=0,
        Mph,
    };

    enum Jetson:quint8{
        no_data=0,
        bump_sign,
        curve_to_left_sign,
        curve_to_right_sign,
        danger_warning,
        dip_sign,
        first_aid_station,
        free_parking,
        horn_prohibited,
        hotel_or_motel,
        left_hairpin_bend,
        left_turn_prohibitted,
        loose_gravel,
        no_parking_sign,
        petrol_station,
        restaurent,
        right_hair_pin_bend,
        right_turn_prohibited,
        road_widens,
        road_works,
        rumble_strip,
        school_ahead,
        staggered_intersection,
        steep_ascent,
        stop_sign,
        straight_ahead_prohibited,
        t_junction_major_road_ahead,
        toilet_sign,
        traffic_light_sign,
        trucks_prohibitted,
        two_way_traffic,
        u_turn_prohibitted,
    };

    Q_ENUM(E_Languages)
    Q_ENUM(Waring_Signs)
    Q_ENUM(TrafficSign)
    Q_ENUM(DayNightMode)
    Q_ENUM(Region)
    Q_ENUM(SpeedUnit)
    Q_ENUM(Jetson)


    //---------------Languages----------

    QString getEmptyString() { return ""; }
    UART(QGuiApplication* app) { mApp = app; }



    static void  declareQML() {
        qmlRegisterType<UART>("com.MyQMLEnums.uart", 1, 0, "Warnings");
    }

    explicit UART(QObject *parent = nullptr);
    QSerialPort *getImx_serial() const;
    void setImx_serial(QSerialPort *newImx_serial);

    //---------------traffic signs-----------------

    quint8 getImx_trafficSignalData() const;
    void setImx_trafficSignalData(quint8 newImx_trafficSignalData);



    quint8 getImx_trafficRegionData() const;
    void setImx_trafficRegionData(quint8 newImx_trafficRegionData);

    quint8 getImx_trafficDaylightData() const;
    void setImx_trafficDaylightData(quint8 newImx_trafficDaylightData);

    //jetson code
    quint8 getImx_jetsonTrafficData() const;
    void setImx_jetsonTrafficData(quint8 newImx_jetsonTrafficData);


    // ---- [UART_TX[0] LANGUAGE
    quint8 getImx_languageData() const;
    void setImx_languageData(quint8 newImx_languageData);

    quint8 getImx_rpmData() const;
    void setImx_rpmData(quint8 newImx_rpmData);

    quint8 getImx_fuelData() const;
    void setImx_fuelData(quint8 newImx_fuelData);

    quint8 getImx_temperatureData() const;
    void setImx_temperatureData(quint8 newImx_temperatureData);



    // ---- [UART_TX[0] TellTaleData
    quint8 getImx_teltaleData() const;
    void setImx_teltaleData(quint8 newImx_teltaleData);

    // ---- [UART_TX[1] VehicleBatteryPercentageData
    quint8 getImx_batteryData() const;
    void setImx_batteryData(quint8 newImx_batteryData);

    // ---- [UART_TX[2] VehicleSpeedData
    quint8 getImx_speedData() const;
    void setImx_speedData(quint8 newImx_speedData);

    //__________Speedunitdata

    quint8 getImx_speedUnitData() const;
    void setImx_speedUnitData(quint8 newImx_speedUnitData);


    // ---- [UART_TX[3] TripABatteryPercentageData
    quint8 getImx_tripAbatterydata() const;
    void setImx_tripAbatterydata(quint8 newImx_tripbatterydata);

    // ---- [UART_TX[4] TripABatteryPercentageData
    quint8 getImx_tripBbatterydata() const;
    void setImx_tripBbatterydata(quint8 newImx_tripBbatterydata);

    // ---- [UART_TX[5-7] VehicleOdometerData
    quint32 getImx_odoData() const;
    void setImx_odoData(quint32 newImx_odoData);

    // ---- [UART_TX[8] FrontTyrePressureData
    quint8 getImx_frontTPMSData() const;
    void setImx_frontTPMSData(quint8 newImx_frontTPMSData);

    // ---- [UART_TX[9] RearTyrePressureData
    quint8 getImx_rearTPMSData() const;
    void setImx_rearTPMSData(quint8 newImx_rearTPMSData);

    // ---- [UART_TX[10-11] RestRangeData
    quint16 getImx_restRangeData() const;
    void setImx_restRangeData(quint16 newImx_rearRangeData);

    // ---- [UART_TX[12] TripATimeDataHrData
    quint8 getImx_tripAtimedata_hr() const;
    void setImx_tripAtimedata_hr(quint8 newImx_tripAtimedata_hr);

    // ---- [UART_TX[13] TripATimeDataMinData
    quint8 getImx_tripAtimedata_min() const;
    void setImx_tripAtimedata_min(quint8 newImx_tripAtimedata_min);

    // ---- [UART_TX[14] TripBTimeDataHrData
    quint8 getImx_tripBtimedata_hr() const;
    void setImx_tripBtimedata_hr(quint8 newImx_tripBtimedata_hr);

    // ---- [UART_TX[15] TripBTimeDataMinData
    quint8 getImx_tripBtimedata_min() const;
    void setImx_tripBtimedata_min(quint8 newImx_tripBtimedata_min);

    // ---- [UART_TX[16-17] TripAData
    quint16 getImx_tripAdata() const;
    void setImx_tripAdata(quint16 newImx_tripAdata);

    // ---- [UART_TX[18-19] TripBData
    quint16 getImx_tripBdata() const;
    void setImx_tripBdata(quint16 newImx_tripBdata);

    // ---- [UART_TX[26] ButtonEvents
    quint8 getImx_BtnEvndatat() const;
    void setImx_BtnEvntdata(quint8 newImx_BtnEvntdata);

    QString hour() const;

    QString minute() const;

    QString amPm() const;

    QString second() const;

public slots:
    void connections();
    //---------------Languages----------

    void updateLanguage(int lang);
    void updateTime();


private slots:
    void readData();


signals:
    //---------------Languages----------

    void languageChanged();

    // ---- [UART_TX[0] TellTaleData
    void imx_teltales(quint8 imx_teltaleData);
    // ---- [UART_TX[1] VehicleBatteryPercentageData
    void imx_speed(quint8 imx_speedData);
    // ---- [UART_TX[2] VehicleSpeedData
    void imx_battery(quint8 imx_batteryData);
    // ---- [UART_TX[3] TripABatteryPercentageData
    void imx_tripAbattery(quint8 imx_tripAbatterydata);
    // ---- [UART_TX[4] TripBBatteryPercentageData
    void imx_tripBbattery(quint8 imx_tripBbatterydata);
    // ---- [UART_TX[5-7] VehicleOdometerData
    void imx_odo(quint32 imx_odoData);
    // ---- [UART_TX[8] VehicleFrontTyrePressureData
    void imx_frontTPMS(quint8 imx_frontTPMSData);
    // ---- [UART_TX[9] VehicleRearTyrePressureData
    void imx_rearTPMS(quint8 imx_rearTPMSData);
    // ---- [UART_TX[10-11] VehicleRearTyrePressureData
    void imx_restRange(quint8 imx_restRangeData);
    // ---- [UART_TX[12] TripATimeDataHrData
    void imx_tripAtime_hour(quint8 imx_tripAtimedata_hr);
    // ---- [UART_TX[13] TripATimeDataMinData
    void imx_tripAtime_min(quint8 imx_tripAtimedata_min);
    // ---- [UART_TX[14] TripBTimeDataHrData
    void imx_tripBtime_hour(quint8 imx_tripBtimedata_hr);
    // ---- [UART_TX[15] TripATimeDataMinData
    void imx_tripBtime_min(quint8 imx_tripBtimedata_min);
    // ---- [UART_TX[16-17] TripAData
    void imx_tripA(quint16 imx_tripAdata);
    // ---- [UART_TX[18-19] TripAData
    void imx_tripB(quint16 imx_tripBdata);
    // ---- [UART_TX[26] ButtonEventData
    void imx_btnEvnt(quint8 imx_BtnEvntData);

    // ---- [UART_TX[0] Warnings
    void imx_warnings(quint8 imx_warningsData);

    void imx_language(quint8 imx_languageData);
    //---------------traffic signs--------------

    void imx_trafficSignals(quint8 imx_trafficSignalData);
    // ---- [UART_TX[0] TrafficRegion
    void imx_trafficRegion(quint8 imx_trafficRegionData);
    // ---- [UART_TX[0] TrafficDayLight
    void imx_trafficDaylight(quint8 imx_trafficDaylightData);

    void imx_unitOfSpeed(quint8 imx_unitData);

    void imx_rpm(quint8 imx_rpmData);

    void imx_fuel(quint8 imx_fuelData);

    void imx_temperature(quint8 imx_temperatureData);

    //jetson code-----------------------

    void imx_trafficSignsJetson(quint8 imx_jetsonTrafficData);


    void timeUpdated();

private:
    //---------------Languages----------

    QGuiApplication* mApp;
    QTranslator mTranslator;

    QSerialPort *imx_serial = nullptr;
    QTimer *imx_timer = nullptr;

    QTimer *digital_clock = nullptr;

    QString  code = "!";
    int codeSize = sizeof(code);

    quint8 imx_bufferSize = 15;
    qint64 availableData;
    QByteArray imx_buffer;
    int imx_dataIndex = 0;


    bool imx_sidestandData;
    bool imx_lowBatteryData  = 1;

    // Top Notifications
    quint8 imx_phonebatteryData = 100;
    quint8 imx_phonenetworkData = 100;
    bool imx_phonebluetoothData = true;
    bool imx_phonemessageData = true;
    bool imx_phonemissedcallData = true;
    bool imx_phoneongoingcallData = true;
    bool imx_goproData = true;

    quint8 imx_tripAdistanceData = 0;
    quint8 imx_tripBdistanceData = 0;
    quint8 imx_odometerdistanceData = 0;
    quint8 imx_distance2emptyData = 0;
    quint8 imx_frontpsiData = 0;
    quint8 imx_rearpsiData = 0;

    bool imx_tripAenabled = true;
    bool imx_tripBenabled = false;
    bool imx_odometerenabled = true;
    bool imx_distance2emptyenabled = true;
    bool imx_psienabled = true;
    bool imx_toggleData = true;

    QByteArray buffer;
    int bufferValue;
    QString m_hour;
    QString m_minute;
    QString m_amPm;
    QString m_second;
};

#endif // UART_H
