# This Python file uses the following encoding: utf-8
import sys
import os
import datetime
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal, QTimer, QUrl
from dronekit import connect, VehicleMode, LocationGlobalRelative
import time
import random
import math
class MainWindow(QObject):
    
    def __init__(self):
        QObject.__init__(self)

        # QTimer - Run Timer
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.setTime())
        self.timer.start(1000)

    setName = Signal(str)
    printTime = Signal(str)
    printdata0 =Signal(int)
    isVisible = Signal(bool)
    printarm=Signal(str)
    printflightmode=Signal(str)
    printbattary = Signal(int)
    printrow =Signal(float)
    printpitch=Signal(float)
    printyaw = Signal(float)
    printchannel = Signal(int)
    printalt = Signal(int)
    printlat = Signal(float)
    printlon = Signal(float)



    @Slot(str)
    def startdronkit(self,button):
        button = "true"
                
        connection_string="127.0.0.1:14550"
        iha=connect(connection_string,wait_ready=True,timeout=100)

        while iha.is_armable==False:
            self.printarm.emit("arming")
        self.printarm.emit("armable")
        iha.mode=VehicleMode("GUIDED")
        while iha.mode!='GUIDED':
            self.printflightmode.emit("stabilize")
        self.printflightmode.emit("GUIDED")
        iha.armed=True
        while iha.armed is False:
            self.printarm.emit("didn't")
        self.printarm.emit("armed")
        print("arm oldu")

        def arm_ol_ve_yuksel(hedef_yukseklik):
            iha.simple_takeoff(hedef_yukseklik)

            yukseklik = iha.location.global_relative_frame.alt
            enlem = iha.location.global_relative_frame.lat
            boylam = iha.location.global_relative_frame.lon
            pitch = iha.attitude.pitch
            yaw = iha.attitude.yaw
            #channel  = iha.channels.overrides
            roll = iha.attitude.roll
            batarya = iha.battery.level
            print(enlem, boylam,yukseklik)
            #//////////////
            self.printalt.emit(yukseklik)
            self.printbattary.emit(batarya)
            self.printpitch.emit(pitch)
            self.printrow.emit(roll)
            self.printyaw.emit(yaw)
            self.printlat.emit(enlem)
            self.printflightmode.emit("GUIDED")
            self.printlon.emit(boylam)
            self.printarm.emit("armed")
            #self.printchannel(channel)







        arm_ol_ve_yuksel(10)

    @Slot(str)
    def setTime(self):
        now = datetime.datetime.now()
        formatDate = now.strftime("Tarih : %Y/%m/%d Saat : %H:%M:%S %p ")
       # print(formatDate)
        self.printTime.emit(formatDate)

    # Function Set Name To Label
    @Slot(str)
    def welcomeText(self, name):
        self.setName.emit("Welcome, " + name)



if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)
    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
