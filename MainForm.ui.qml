import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    width: 640
    height: 480

    property alias review: review
    property alias learn_new: learn_new

    RowLayout {
        anchors.centerIn: parent

        Button {
            id: review
            text: qsTr("Review")
        }

        Button {
            id: learn_new
            text: qsTr("Learn new")
        }
    }
}
