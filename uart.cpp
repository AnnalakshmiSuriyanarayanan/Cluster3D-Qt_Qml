#include "uart.h"
#include "qobject.h"
#include "qserialport.h"
//#include "qtmetamacros.h"
#include <cstdint>
#include <QDateTime>


bool imx_ridemodeData;
bool imx_warningLowbatteryData;
bool imx_warningSidestandData;
bool imx_rightIndicatorData;
bool imx_leftIndicatorData;
bool imx_highbeamData;
bool imx_lowbeamData;
bool imx_parkingalertData;

quint8 imx_teltaleData;
quint8 imx_speedData = 0;
quint8 imx_unitData;
quint8 imx_batteryData;
quint8 imx_tripAbatterydata=0;
quint8 imx_tripBbatterydata=0;
quint32 imx_odoData;
quint8 imx_frontTPMSData;
quint8 imx_rearTPMSData;
quint16 imx_restRangeData;
quint8 imx_tripAtimedata_hr;
quint8 imx_tripAtimedata_min;
quint8 imx_tripBtimedata_hr;
quint8 imx_tripBtimedata_min;
quint16 imx_tripAdata;
quint16 imx_tripBdata;
quint8 imx_BtnEvntdata;
quint8 imx_languageData=25;
quint8 imx_trafficSignalData;
quint8 imx_trafficRegionData;
quint8 imx_trafficDaylightData;
quint8 imx_rpmData;
quint8 imx_fuelData;
quint8 imx_temperatureData;
quint8 imx_jetsonTrafficData;



UART::UART(QObject *parent) : QObject{parent}, imx_serial(new QSerialPort(this)),
   imx_timer(new QTimer(this))  //  Constructor
{
    //  ---- [SCPETS_1]
    //imx_serial->setPortName("COM1");      // Set_Comm Ports for Console
    imx_serial->setPortName("ttymxc0");   // Set Comm Ports for Target
    imx_serial->open(QIODevice::ReadWrite); // Device Open Mode
    imx_serial->setBaudRate(QSerialPort::Baud115200); // Device Baudrate
    imx_serial->setDataBits(QSerialPort::Data8);    // Device Data Bits
    imx_serial->setParity(QSerialPort::NoParity);   // Device Parity
    imx_serial->setStopBits(QSerialPort::OneStop);  // Device Stop Bits
    imx_serial->setFlowControl(QSerialPort::NoFlowControl); //Device Flow Control
    imx_serial->setReadBufferSize(imx_bufferSize);  // Device Buffer Size
    availableData = imx_serial->bytesAvailable();   // Device Available Data Bits
//    imx_serial->waitForReadyRead(500);
    //  ---- [SCPETS_2]
    imx_timer->start(50);   // Timer Delay

    //  ---- [SCPETS_3]
    connect(imx_timer, SIGNAL(timeout()), this, SLOT(connections())); // Timer Connections [Public slots: void Connections();]

    //  ---- [SCPETS_4]
    connect(imx_serial, SIGNAL(readyRead()), this, SLOT(readData()));   // QSerialPort Connections [Private slots: void readData();]

    updateTime();
    QTimer *timer = new QTimer(this);
    connect(timer, &QTimer::timeout, this, &UART::updateTime);
    timer->start(1000); // Update every second
}



void UART::readData() // Private Slot
{

    QByteArray dataBA = imx_serial->readAll();
    QByteArray data(dataBA);
    buffer.append(data);
    int bufferValue = 255;
    int index = buffer.indexOf(bufferValue);
    if(index != -1)
    {
        QByteArray message = buffer.mid(0,index);
        buffer.remove(0,index+1);
        qInfo() << message[0]<< "\t"<< message[1]<< "\t"<< message[2]<< "\t";

        //jetson traffic signs
        imx_jetsonTrafficData=message[0];

        // ---- [UART_TX[0] TellTaleData
        imx_teltaleData = message[0];

        //-------[UART_TX[0] LanguageData
//        imx_languageData = message[1];

        //-------[UART_TX[0] TrafficSignals
//        imx_trafficSignalData = message[2];

        //-------[UART_TX[0] TrafficRegion
//        imx_trafficRegionData = message[3];

        //-------[UART_TX[0] TrafficDayandLight
//        imx_trafficDaylightData = message[4];

        // ---- [UART_TX[2] VehicleSpeedData
        imx_speedData = message[0];

        imx_unitData = message[1];

        // ---- [UART_TX[1] VehicleBatteryPercentageData
//        imx_batteryData = message[7];

        // ---- [UART_TX[3] TripABatteryPercentageData
//        imx_tripAbatterydata = imx_speedData;

        // ---- [UART_TX[4] TripBBatteryPercentageData
//        imx_tripBbatterydata = imx_speedData;

        // ---- [UART_TX[5-7] VehicleOdometerData
        imx_odoData = message[2];

        imx_rpmData=message[3];

        imx_fuelData=message[4];

        imx_temperatureData=message[5];

        // ---- [UART_TX[8] FrontTyrePressureData
        imx_frontTPMSData = imx_speedData;

        // ---- [UART_TX[9] RearTyrePressureData
        imx_rearTPMSData = imx_speedData;

        // ---- [UART_TX[10-11] RearTyrePressureData
        imx_restRangeData = imx_speedData;

        // ---- [UART_TX[12] TripATimeHour
        imx_tripAtimedata_hr = imx_speedData;

        // ---- [UART_TX[13] TripATimeMin
        imx_tripAtimedata_min = imx_speedData;

        // ---- [UART_TX[14] TripBTimeHour
        imx_tripBtimedata_hr = imx_speedData;

        // ---- [UART_TX[15] TripBTimeMin
        imx_tripBtimedata_min = imx_speedData;

        // ---- [UART_TX[16-17] TripAData
        imx_tripAdata = imx_speedData;

        // ---- [UART_TX[18-19] TripBData
        imx_tripBdata = imx_speedData;

        // ---- [UART_TX[26] ButtonEventsData
        imx_BtnEvntdata = imx_speedData;

        setImx_teltaleData(imx_teltaleData);                                // ---- [UART_TX[1] TellTaleData
        setImx_languageData(imx_languageData);
        setImx_trafficSignalData(imx_trafficSignalData);
        setImx_trafficRegionData(imx_trafficRegionData);
        setImx_trafficDaylightData(imx_trafficDaylightData);
        setImx_jetsonTrafficData(imx_jetsonTrafficData);
        setImx_batteryData(imx_batteryData);                             // ---- [UART_TX[1] VehicleBatteryPercentageData
        setImx_speedData(imx_speedData);                                 // ---- [UART_TX[2] VehicleSpeedData
        setImx_speedUnitData(imx_unitData);
        setImx_tripAbatterydata(imx_tripAbatterydata);              // ---- [UART_TX[3] TripABatteryPercentageData
        setImx_tripBbatterydata(imx_tripBbatterydata);              // ---- [UART_TX[4] TripBBatteryPercentageData
        setImx_odoData(imx_odoData);                                       // ---- [UART_TX[5-7] VehicleOdometerData
        setImx_frontTPMSData(imx_frontTPMSData);              // ---- [UART_TX[8] VehicleFrontTyrePressureData
        setImx_rearTPMSData(imx_rearTPMSData);                 // ---- [UART_TX[9] VehicleRearTyrePressureData
        setImx_restRangeData(imx_restRangeData);                  // ---- [UART_TX[10-11] VehicleRestRangeData
        setImx_tripAtimedata_hr(imx_tripAtimedata_hr);          // ---- [UART_TX[12] TripATimeHour
        setImx_tripAtimedata_min(imx_tripAtimedata_min);    // ---- [UART_TX[13] TripATimeMin
        setImx_tripBtimedata_hr(imx_tripBtimedata_hr);          // ---- [UART_TX[14] TripBTimeHour
        setImx_tripBtimedata_min(imx_tripBtimedata_min);    // ---- [UART_TX[15] TripBTimeMin
        setImx_tripAdata(imx_tripAdata);                                  // ---- [UART_TX[16+17] TripAData
        setImx_tripBdata(imx_tripBdata);                                  // ---- [U  ART_TX[18+19] TripAData
        setImx_BtnEvntdata(imx_BtnEvntdata);                        // ---- [UART_TX[26] ButtonEventData
        setImx_rpmData(imx_rpmData);
        setImx_fuelData(imx_fuelData);
        setImx_temperatureData(imx_temperatureData);
    }
}
void UART::connections() // public slot
{
    // ---- [UART_TX[0] TellTaleData
    {

//        imx_teltaleData = getImx_teltaleData();
//        imx_languageData = getImx_languageData();
//        imx_trafficSignalData=getImx_trafficSignalData();
//        imx_trafficRegionData=getImx_trafficRegionData();
//        imx_trafficDaylightData=getImx_trafficDaylightData();
//        imx_speedData =getImx_speedData();
//        imx_unitData = getImx_speedUnitData();
//        imx_batteryData = getImx_batteryData();
//        imx_odoData=getImx_odoData();
//        imx_rpmData=getImx_rpmData();
//        imx_fuelData=getImx_fuelData();
//        imx_temperatureData=getImx_temperatureData();
//        imx_jetsonTrafficData= getImx_jetsonTrafficData();
//        imx_tripAdata = getImx_tripAdata();

        imx_teltaleData = 9;
        imx_languageData= 3;
        imx_trafficSignalData=69;
        imx_trafficRegionData=1;
        imx_trafficDaylightData=0;
        imx_speedData =120;
        imx_unitData=0;
        imx_batteryData =70;
        imx_odoData = 5678091;
        imx_rpmData=5;
        imx_fuelData=20;
        imx_temperatureData=10;
        imx_jetsonTrafficData=20;
        imx_tripAdata = 9999;


        emit imx_trafficSignals(imx_trafficSignalData);
        emit imx_trafficRegion(imx_trafficRegionData);
        emit imx_rpm(imx_rpmData);
        emit imx_fuel(imx_fuelData);
        emit imx_temperature(imx_temperatureData);
        emit imx_trafficDaylight(imx_trafficDaylightData);
        emit imx_warnings(imx_teltaleData);
        emit imx_teltales(imx_teltaleData);
        emit imx_speed(imx_speedData);
        emit imx_unitOfSpeed(imx_unitData);
        emit imx_odo(imx_odoData);
        emit imx_trafficSignsJetson(imx_jetsonTrafficData);
        emit imx_tripA(imx_tripAdata);

    }
    {
        imx_languageData=getImx_languageData();
        //                updateLanguage(imx_languageData);
        emit imx_language(imx_languageData);
    }
    // ---- [UART_TX[1] VehicleBatteryPercentageData
    {
        imx_batteryData = getImx_batteryData();
        emit imx_battery(imx_batteryData);
    }
    // ---- [UART_TX[2] VehicleSpeedData
    {
        imx_speedData = getImx_speedData();
        emit imx_speed(imx_speedData);
    }
    // ---- [UART_TX[3] TripABatteryPercentageData
    {
        imx_tripAbatterydata = getImx_tripAbatterydata();
        emit imx_tripAbattery(imx_tripAbatterydata);
    }
    // ---- [UART_TX[4] TripBBatteryPercentageData
    {
        imx_tripBbatterydata = getImx_tripBbatterydata();
        emit imx_tripBbattery(imx_tripBbatterydata);
    }
    // ---- [UART_TX[5-7] VehicleOdometerData
    {
        imx_odoData = getImx_odoData();
        emit imx_odo(imx_odoData);
    }
    // ---- [UART_TX[8] VehicleFrontTyrePressureData
    {
        imx_frontTPMSData = getImx_frontTPMSData();
        emit imx_frontTPMS(imx_frontTPMSData);
    }
    // ---- [UART_TX[9] VehicleRearTyrePressureData
    {
        imx_rearTPMSData = getImx_rearTPMSData();
        emit imx_rearTPMS(imx_rearTPMSData);
    }
    // ---- [UART_TX[10-11] VehicleRestRangeData
    {
        imx_restRangeData = getImx_restRangeData();
        emit imx_restRange(imx_restRangeData);
    }
    // ---- [UART_TX[12] TripAData_hour
    {
        imx_tripAtimedata_hr = getImx_tripAtimedata_hr();
        emit imx_tripAtime_hour(imx_tripAtimedata_hr);
    }
    // ---- [UART_TX[13] TripAData_min
    {
        imx_tripAtimedata_min = getImx_tripAtimedata_min();
        emit imx_tripAtime_min(imx_tripAtimedata_min);
    }
    // ---- [UART_TX[14] TripBData_hour
    {
        imx_tripBtimedata_hr = getImx_tripBtimedata_hr();
        emit imx_tripBtime_hour(imx_tripBtimedata_hr);
    }
    // ---- [UART_TX[15] TripBData_min
    {
        imx_tripBtimedata_min = getImx_tripBtimedata_min();
        emit imx_tripBtime_min(imx_tripBtimedata_min);
    }
    // ---- [UART_TX[16-17] TripAData
    {
        imx_tripAdata = getImx_tripAdata();
        emit imx_tripA(imx_tripAdata);
    }
    // ---- [UART_TX[18-19] TripAData
    {
        imx_tripBdata = getImx_tripBdata();
        emit imx_tripB(imx_tripBdata);
    }
    // ---- [UART_TX[26] ButtonEventData
    {
        imx_BtnEvntdata = getImx_BtnEvndatat();
        emit imx_btnEvnt(imx_BtnEvntdata);
    }
}

void UART::updateLanguage(int lang)
{
    switch(lang){

    case UART::GER:
        qDebug()<<"German Language";
        mTranslator.load("German_GER", ":/translator");
        mApp->installTranslator(&mTranslator);
        break;
    case UART::SPA:
        qDebug()<<"Spanish Language";
        mTranslator.load("Spanish_SPA", ":/translator");
        mApp->installTranslator(&mTranslator);
        break;
    case UART::FRA:
        qDebug()<<"French Language";
        mTranslator.load("French_FRA", ":/translator");
        mApp->installTranslator(&mTranslator);
        break;
    case UART::CHI:
        qDebug()<<"Chinese Language";
        mTranslator.load("Chinese_CHI", ":/translator");
        mApp->installTranslator(&mTranslator);
        //emit languageChanged();
        break;

    default:
        mApp->removeTranslator(&mTranslator);
        break;
    }
}

quint8 UART::getImx_speedData() const
{
    return imx_speedData;
}

void UART::setImx_speedData(quint8 newImx_speedData)
{
    imx_speedData = newImx_speedData;
}

quint8 UART::getImx_speedUnitData() const
{
    return imx_unitData;
}

void UART::setImx_speedUnitData(quint8 newImx_speedUnitData)
{
    imx_unitData = newImx_speedUnitData;
}

quint8 UART::getImx_batteryData() const
{
    return imx_batteryData;
}

void UART::setImx_batteryData(quint8 newImx_batteryData)
{
    imx_batteryData = newImx_batteryData;
}

quint8 UART::getImx_teltaleData() const
{
    return imx_teltaleData;
}

void UART::setImx_teltaleData(quint8 newImx_teltaleData)
{
    imx_teltaleData = newImx_teltaleData;
}

quint8 UART::getImx_tripAbatterydata() const
{
    return imx_tripAbatterydata;
}

quint8 UART::getImx_languageData() const
{
    return imx_languageData;
}

void UART::setImx_languageData(quint8 newImx_languageData)
{
    imx_languageData=newImx_languageData;
    updateLanguage(imx_languageData);
}

quint8 UART::getImx_rpmData() const
{
    return imx_rpmData;
}

void UART::setImx_rpmData(quint8 newImx_rpmData)
{
    imx_rpmData=newImx_rpmData;
}

quint8 UART::getImx_fuelData() const
{
    return imx_fuelData;
}

void UART::setImx_fuelData(quint8 newImx_fuelData)
{
    imx_fuelData=newImx_fuelData;
}

quint8 UART::getImx_temperatureData() const
{
    return imx_temperatureData;
}

void UART::setImx_temperatureData(quint8 newImx_temperatureData)
{
    imx_temperatureData=newImx_temperatureData;
}
//-------------------trafficsign-----------
quint8 UART::getImx_trafficSignalData() const
{
    return imx_trafficSignalData;
}

void UART::setImx_trafficSignalData(quint8 newImx_trafficSignalData)
{
    imx_trafficSignalData=newImx_trafficSignalData;
}

quint8 UART::getImx_trafficRegionData() const
{
    return imx_trafficRegionData;
}

void UART::setImx_trafficRegionData(quint8 newImx_trafficRegionData)
{
    imx_trafficRegionData=newImx_trafficRegionData;
}

quint8 UART::getImx_trafficDaylightData() const
{
    return imx_trafficDaylightData;
}

void UART::setImx_trafficDaylightData(quint8 newImx_trafficDaylightData)
{
    imx_trafficDaylightData=newImx_trafficDaylightData;

}
quint8 UART::getImx_jetsonTrafficData() const
{
    return imx_jetsonTrafficData ;
}

void UART::setImx_jetsonTrafficData(quint8 newImx_jetsonTrafficData)
{
    imx_jetsonTrafficData = newImx_jetsonTrafficData;
}
void UART::setImx_tripAbatterydata(quint8 newImx_tripAbatterydata)
{
    imx_tripAbatterydata = newImx_tripAbatterydata;
}

quint8 UART::getImx_tripBbatterydata() const
{
    return imx_tripBbatterydata;
}

void UART::setImx_tripBbatterydata(quint8 newImx_tripBbatterydata)
{
    imx_tripBbatterydata = newImx_tripBbatterydata;
}

quint32 UART::getImx_odoData() const
{
    return imx_odoData;
}

void UART::setImx_odoData(quint32 newImx_odoData)
{
    imx_odoData = newImx_odoData;
}

quint8 UART::getImx_frontTPMSData() const
{
    return imx_frontTPMSData;
}

void UART::setImx_frontTPMSData(quint8 newImx_frontTPMSData)
{
    imx_frontTPMSData = newImx_frontTPMSData;
}

quint8 UART::getImx_rearTPMSData() const
{
    return imx_rearTPMSData;
}

void UART::setImx_rearTPMSData(quint8 newImx_rearTPMSData)
{
    imx_rearTPMSData = newImx_rearTPMSData;
}

quint16 UART::getImx_restRangeData() const
{
    return imx_restRangeData;
}

void UART::setImx_restRangeData(quint16 newImx_restRangeData)
{
    imx_restRangeData = newImx_restRangeData;
}

quint8 UART::getImx_tripAtimedata_hr() const
{
    return imx_tripAtimedata_hr;
}

void UART::setImx_tripAtimedata_hr(quint8 newImx_tripAtimedata_hr)
{
    imx_tripAtimedata_hr = newImx_tripAtimedata_hr;
}

quint8 UART::getImx_tripAtimedata_min() const
{
    return imx_tripAtimedata_min;
}

void UART::setImx_tripAtimedata_min(quint8 newImx_tripAtimedata_min)
{
    imx_tripAtimedata_min = newImx_tripAtimedata_min;
}

quint8 UART::getImx_tripBtimedata_hr() const
{
    return imx_tripBtimedata_hr;
}

void UART::setImx_tripBtimedata_hr(quint8 newImx_tripBtimedata_hr)
{
    imx_tripBtimedata_hr = newImx_tripBtimedata_hr;
}

quint8 UART::getImx_tripBtimedata_min() const
{
    return imx_tripBtimedata_min;
}

void UART::setImx_tripBtimedata_min(quint8 newImx_tripBtimedata_min)
{
    imx_tripBtimedata_min = newImx_tripBtimedata_min;
}

quint16 UART::getImx_tripAdata() const
{
    return imx_tripAdata;
}

void UART::setImx_tripAdata(quint16 newImx_tripAdata)
{
    imx_tripAdata = newImx_tripAdata;
}

quint16 UART::getImx_tripBdata() const
{
    return imx_tripBdata;
}

void UART::setImx_tripBdata(quint16 newImx_tripBdata)
{
    imx_tripBdata = newImx_tripBdata;
}

quint8 UART::getImx_BtnEvndatat() const
{
    return imx_BtnEvntdata;
}

void UART::setImx_BtnEvntdata(quint8 newImx_BtnEvntdata)
{
    imx_BtnEvntdata = newImx_BtnEvntdata;
}


void UART::updateTime()
{
    QDateTime currentTime = QDateTime::currentDateTime();
    QTime currentQTime = currentTime.time();

    int hour = currentQTime.hour();
    int minute = currentQTime.minute();
    int second = currentQTime.second(); // Get seconds
    QString amPm = currentQTime.toString("AP");

    if (hour == 0) {
        hour = 12;  // Midnight
        amPm = "AM";
    } else if (hour == 12) {
        amPm = "PM";
    } else if (hour > 12) {
        hour -= 12;
        amPm = "PM";
    } else {
        amPm = "AM";
    }

    m_hour = QString::number(hour);
    m_minute = QString::number(minute);
    m_second = QString::number(second); // Set seconds
    m_amPm = amPm;

    emit timeUpdated();
}


QString UART::hour() const
{
    return m_hour;
}

QString UART::minute() const
{
    return m_minute;
}
QString UART::second() const
{
    return m_second;
}

QString UART::amPm() const
{
    return m_amPm;
}


