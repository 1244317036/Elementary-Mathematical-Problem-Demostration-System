import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.2

Item {
    id: item2
    width: parent.width
    height: parent.height

    Rectangle {
        id: rectangle1
        x: -251
        y: -225
        width: 619
        height: 450
        color: "#ffffff"

        Image {
            id: image1
            x: 205
            y: 146
            width: 209
            height: 158
            source: "images/1.jpg"
        }
    }
}
