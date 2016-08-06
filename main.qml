import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
//import Material 0.3
import QtMultimedia 5.0


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Dictation")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        id: form

        visible: true

        anchors.fill: parent
//        learn_new.onClicked: messageDialog.show(qsTr("Learn new word"))
//        review.onClicked: messageDialog.show(qsTr("Review"))
        learn_new.onClicked: function() {
            dictation.visible = true

            form.visible  = false
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
    Audio {
        id: mp32
        source: "file:///Users/jyd/Music/网易云音乐/霍尊\ -\ 天行九歌.mp3"
    }
    Dictation {
        id: dictation
        property bool playing: false
        visible: false
        anchors.fill: parent
        mp3area.onClicked:  function(){
            console.log("click")
            if(playing == true) {
                mp32.stop()
                playing = false
            } else {
                mp32.play()
                playing = true
            }
            console.log(mp32.errorString)


        }
    }
}
