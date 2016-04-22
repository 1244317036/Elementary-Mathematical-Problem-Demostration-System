import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: item1
    width: 640
    height: 480

    property alias button3: button3
    property alias button2: button2
    property alias button1: button1

    RowLayout {
        x: 203
        y: 302
        width: 235
        height: 43
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 109
        z: 1
        anchors.onBottomMarginChanged: parent

        Button {
            id: button1
            text: qsTr("软件介绍")
        }

        Button {
            id: button2
            text: qsTr("版权所有")
        }

        Button {
            id: button3
            text: qsTr("开始学习")
        }
    }

    Image {
        id: image1
        x: 0
        y: 0
        width: 640
        height: 480
        source: "images/1.jpg"
        anchors.fill: parent
    }
}
