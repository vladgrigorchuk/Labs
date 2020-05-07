
import QtQuick 2.0
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1


Item{

Window{
    id: w2
    flags: Qt.FramelessWindowHint
    visible: true
    width: 1200
    height: 800
    x: (Screen.width - width) / 2
    y: (Screen.height - height) / 2

    MouseArea {
        anchors.fill: parent

        Image {
            anchors.fill: parent
            id: image2
            x: 0
            y: 0
            width: 1000
            height: 650
            clip: true
            source: "gray1.jpg"

            Text {
                id: text1
                x: 550
                y: 5
                width: 659
                height: 117
                text: qsTr("ИиПУ")
                font.bold: true
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 36
            }

            Button {
                id: button1
                x: 1145
                y: 5
                width: 50
                height: 50
                text: qsTr("X")
                clip: true

                onClicked: Qt.quit()
            }




            Image {
                id: image3
                x: 95
                y: 130
                width: 800
                height: 500
                clip: false
                opacity: 1
                source: "win.jpg"
                visible: false



            }
            Button {
                id: button7
                x: 10
                y: 660
                width: 120
                height: 30
                text: qsTr("Лабораторная №2")
                checked: false
                isDefault: false
                checkable: true

                onClicked:
                {
                    if(button10.visible == false){
                        image3.visible = false


                        str_1.visible = true
                        str_2.visible = false
                        str_3.visible = false



                        button10.visible = true
                        button11.visible = true
                        button12.visible = true
                    }
                    else{
                        str_1.visible = false
                        button10.visible = false
                        button11.visible = false
                        button12.visible = false
                    }
                }

                Image {
                    id: str_1
                    x: 5
                    y: -560
                    width: 1180
                    height: 510
                    visible: false
                    source: "win.jpg"

                    ScrollView{
                        y: 0
                        width: 1180;
                        height: 510
                        TextEdit {
                            id: text4
                            objectName: "text4"
                            x: 20
                            y: 15
                            width: 700
                            height: 1000
                            clip: true
                            font.pixelSize: 14
                            wrapMode: TextEdit.Wrap
                            readOnly:true
                        }
                    }
                }
            }






            Button {//фоны
                            id: button2
                            x: 10
                            y: 620
                            width: 120
                            height: 30
                            text: qsTr("Лабораторная №1")

                            onClicked:{
                                if(button4.visible == false){

                                    button4.visible = true
                                    button5.visible = true
                                    button6.visible = true
                                   // str_2.focus = false
                                }
                                else{

                                    button4.visible = false
                                    button5.visible = false
                                    button6.visible = false
                                }
                            }
                        }



            Button {
                            id: button14
                            x: 10
                            y: 700
                            width: 120
                            height: 30
                            text: qsTr("Лабораторная №3")





                            onClicked: {
                                                if(str_2.visible == false){
                                                    button7.checked = false
                                                    image3.visible = false
                                                    //button9.checked = false
                                                    str_2.visible = true
                                                    str_1.visible = false
                                                    str_3.visible = false
                                                    str_2.forceActiveFocus();
                                                }
                                                else
                                                    str_2.visible = false
                                                    button10.visible = false
                                                    button11.visible = false
                                                    button12.visible = false

                                            }

                                            Image {
                                                id: str_2
                                                x: 5
                                                y: -600
                                                width: 1180
                                                height: 510
                                                visible: false
                                                source: "win.jpg"
                                                Keys.onPressed:
                                                {

                                                    text333.text = event.key

                                                    if(text333.text == "16777235")    //СТРЕЛКА ВВЕРХ
                                                    {
                                                        text3.visible = true
                                                        text3.text = "Нажмите клавишу любого индикатора клавиатуры"
                                                    }else
                                                    if(text333.text == "16777253") //   Num Lock
                                                    {
                                                        onClicked: _lab3.buttonClicked()
                                                    }else
                                                    if(text333.text == "16777252")  // Caps Lock
                                                    {
                                                        onClicked: _lab3.buttonClicked()
                                                    }else
                                                    if(text333.text == "16777249")    //      Левый Ctrl
                                                    {
                                                        onClicked: _lab3.buttonClicked1()
                                                    }else
                                                    if(text333.text == "49")    //     1
                                                    {
                                                        onClicked: _lab3.buttonClicked2()


                                                    }

                                                }


                                                Text {
                                                    id: text333
                                                    visible: false
                                                }

                                                TextEdit {
                                                    id: text3
                                                    objectName: "text3"
                                                    x: 46
                                                    y: 36
                                                    visible: false
                                                    width: 400
                                                    height: 400
                                                    clip: true
                                                    font.pixelSize: 12
                                                    wrapMode: TextEdit.Wrap
                                                    readOnly:true
                                                }
                                            }



                        }




            Button {
                            id: button15
                            x: 10
                            y: 740
                            width: 120
                            height: 30
                            text: qsTr("Лабораторная №4")


                            onClicked:
                                            {
                                                if(str_3.visible == false){
                                                    button7.checked = false
                                                    image3.visible = false
                                                    button10.visible = false
                                                    button11.visible = false
                                                    button12.visible = false
                                                    str_3.visible = true
                                                    str_2.visible = false
                                                    str_1.visible = false
                                                    onClicked: _lab4.buttonClicked(1)
                                                    str_2.focus = false
                                                }
                                                else
                                                    str_3.visible = false


                                                }
                                            Image {
                                                id: str_3
                                                x: 5
                                                y: -640
                                                width: 1180
                                                height: 510
                                                visible: false
                                                source: "win.jpg"

                                                TextEdit {
                                                    id: text41
                                                    objectName: "text41"
                                                    visible: false
                                                    text: qsTr("                                                Алгоритм записи в СОМ-порт

                            1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
                            2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
                            3. В БА+3 занести 0 в 7-й бит для использования БА+0 в качестве буфера данных, а в 5, 4, 3 - биты контроля
                            - хх0 – отсутствие бита контроля по чётности/
                            - 001 – бит контроля формируется по четному паритету;
                            - 011 – бит контроля формируется по нечётному паритету;
                            - 101 – бит контроля равен 1;
                            - 111 – бит контроля равен 0.
                            4. Из БА+5 считываем 5-й бит. Если 1, то
                            5. В БА+0 заносим ASCII-код N-го символа данных, возвращаемся на п4, N++


                                                                            Алгоритм чтения из СОМ-порта

                            1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
                            2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
                            3. В БА+3 занести 0 в 7-й бит для использования БА+0 в качестве буфера данных, а в 5, 4, 3 - биты контроля
                            - хх0 – отсутствие бита контроля по чётности/
                            - 001 – бит контроля формируется по четному паритету;
                            - 011 – бит контроля формируется по нечётному паритету;
                            - 101 – бит контроля равен 1;
                            - 111 – бит контроля равен 0.
                            4. Из БА+5 считываем 1-й бит. Если 1, то
                            5. Из БА+0 считываем ASCII-код N-го символа данных, возвращаемся на п4, N++

                            ")
                                                    clip: false
                                                    font.pixelSize: 12
                                                }

                                                ScrollView{
                                                    y: 0
                                                    width: 1180;
                                                    height: 510
                                                    TextEdit {
                                                        id: text5
                                                        objectName: "text5"
                                                        x: 44
                                                        y: 35
                                                        width: 1000
                                                        height: 1000
                                                        clip: true
                                                        font.pixelSize: 14
                                                        wrapMode: TextEdit.Wrap
                                                        readOnly:true
                                                   }

                                                }
                                            }









          ///////////////

                        }




                        Button {
                            id: button4
                            x: 150
                            y: 620
                            width: 120
                            height: 30
                            text: qsTr("По умолчанию")
                            visible: false

                            onClicked: image2.source = "gray1.jpg"
                        }

                        Button {
                            id: button5
                            x: 290
                            y: 620
                            width: 120
                            height: 30
                            text: qsTr("Красный")
                            visible: false

                            onClicked: image2.source = "red.jpg"
                        }

                        Button {
                            id: button6
                            x: 430
                            y: 620
                            width: 120
                            height: 30
                            text: qsTr("Синий")
                            visible: false

                            onClicked: image2.source = "blue.jpg"
                        }








            Button {
                id: button10
                x: 150
                y: 660
                width: 120
                height: 30
                text: qsTr("/proc/meminfo")
                checked: false
              //  checkable: true
                isDefault: false
                visible: false

                onClicked:
                {
                    onClicked: _lab1.buttonClicked(0)
                }
            }
            Button {
                id: button11
                x: 290
                y: 660
                width: 120
                height: 30
                text: qsTr("/proc/cpuinfo")
                checked: false
              //  checkable: true
                isDefault: false
                visible: false

                onClicked:
                {
                     onClicked: _lab1.buttonClicked(1)
                }
            }
            Button {
                id: button12
                x: 430
                y: 660
                width: 120
                height: 30
                text: qsTr("/proc/devices")
                checked: false
               // checkable: true
                isDefault: false
                visible: false

                onClicked:
                {
                     onClicked: _lab1.buttonClicked(2)
                }
            }


        }
    }
}


}

















































































































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
