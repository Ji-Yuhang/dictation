import QtQuick 2.4
import Qt.labs.settings 1.0
import QtQuick.Controls 1.5
import QtQuick.Extras 1.4
import QtMultimedia 5.0
Item {
    id: item1
    width: 400
    height: 400

    property alias mp3area: mp3area
    property alias mp3: mp3


    MouseArea {
        id: mp3area
        x: 20
        y: 150
        width: 100
        height: 100

        Audio {
            id: mp3
            source: "/Users/jyd/Music/网易云音乐/霍尊\ -\ 天行九歌.mp3"
        }

        Image {
            id: image1
            anchors.fill: parent
            source: "qrc:/image/image/mp3-1.png"
        }

    }

    TextInput {
        id: word_input
        x: 133
        y: 174
        width: 250
        height: 57
        text: qsTr("")
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignLeft
    }

    Button {
        id: button1
        x: 301
        y: 325
        text: qsTr("next")
    }

    Button {
        id: button2
        x: 45
        y: 325
        text: qsTr("stash")
    }
}
