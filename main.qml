import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtWebChannel 1.0
import QtWebKit 3.0

ApplicationWindow {
    title: qsTr("基本数学规划问题的教学演示系统")
    width: 800
    height: 600
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&文件")
            MenuItem {
                text: qsTr("&编辑笔记")
                onTriggered: {
                    notebook.visible =true;
                }
            }
            MenuItem {
                text: qsTr("退出程序")
                onTriggered: Qt.quit();
            }
        }       
        Menu {
            title: qsTr("&查找")
            MenuItem {
                text: qsTr("&搜索")
                onTriggered: window11.visible =Qt.openUrlExternally("F:\project");
            }
        }
        Menu {
            title: qsTr("&难度")
            MenuItem {
                text: qsTr("&难度选择")
                onTriggered: messageDialog.show(qsTr("a"));
            }
        }
        Menu {
            title: qsTr("&工具")
            MenuItem {
                text: qsTr("&计时")
                onTriggered:  messageDialog.show(qsTr("本功能尚未开发"))
            }
        }
        Menu {
            title: qsTr("&编辑")
            MenuItem {
                text: qsTr("&编辑")
                onTriggered:  messageDialog.show(qsTr("本功能尚未开发"))
            }
        }
        Menu {
            title: qsTr("&帮助")
            MenuItem {
                text: qsTr("&软件信息")
                onTriggered:  messageDialog.show(qsTr("\t这是一个Windows环境下的的应用程序。主要面向学习数学规划知识的初学者，从介绍基本数学规划类型的定义出发，包括例题讲解和相应练习题，并配有解答。软件界面友好，内容清晰易懂，是初学者学习数学规划知识的好助手。"))
            }
            MenuItem {
                text: qsTr("&关于我们")
                onTriggered:  messageDialog.show(qsTr("本软件系大学生创新创业训练项目作品，由电信学院五位同学共同设计开发，该项目于2016年4月24日结题。"))
            }
        }
    }

    MainForm {
        id: home
        visible: true
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("      这是一个Windows环境下的的应用程序。主要面向学习数学规划知识的初学者，从介绍基本数学规划类型的定义出发，包括例题讲解和相应练习题，并配有解答。软件界面友好，内容清晰易懂，是初学者学习数学规划知识的好助手。"))
        button2.onClicked: messageDialog.show(qsTr("本软件系大学生创新创业训练项目作品，由电信学院五位同学共同设计开发，该项目于2016年4月24结题。"))
        button3.onClicked: {
            home.visible =false;
            menu.visible =true;
        }
     }

    MessageDialog {
        id: messageDialog
        title: qsTr("基本数学规划问题的教学演示系统")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
        }
    Item {
        id: menu
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        visible: false
        Rectangle {
            visible: true;
            id: background;
            width: parent.width;
            height: parent.height;
            z: -1;
            color: "lightblue";
        }

        Rectangle {
            id:listviewer
            width: 200
            height: 300
            anchors.verticalCenterOffset: -70
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                id: rectangle021
                height: 75
                color: "lightblue"
                z: 1
                visible: true
                //text: qsTr("Button")

                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0

                Label {
                    id: label1
                    x: 0
                    z: 2
                    width: 200
                    height: 75
                    color: "darkgreen";
                    text: qsTr("线性规划")
                    font.pointSize: 20
                    font.family: "Times New Roman"
                    visible: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                    anchors.topMargin: 0
                }

                MouseArea {
                    width: 200
                    z: 1
                    anchors.fill: parent
                    onClicked: {
                        menu.visible =false;
                        window11.visible =true;
                    }
                }

            }

            Rectangle {
                id: rectangle022
                height: 75
                color: "lightblue"
                //text: qsTr("Button")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: rectangle021.bottom
                anchors.topMargin: 0


                Label {
                    id: label2
                    x: 0
                    z: 2
                    width: 200
                    height: 75
                    color: "darkgreen";
                    text: qsTr("二次规划")
                    font.pointSize: 20
                    visible: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                    anchors.topMargin: 0
                }

                MouseArea {
                    z: 1
                    anchors.fill: parent
                    onClicked: {
                        menu.visible =false;
                        window21.visible =true;
                    }
                }
            }

            Rectangle {
                id: rectangle023
                height: 75
                color: "lightblue"
                anchors.top: rectangle022.bottom
                anchors.topMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0

                Label {
                    id: label3
                    x: 0
                    z: 2
                    width: 200
                    height: 75
                    color: "darkgreen";
                    text: qsTr("正定规划")
                    font.pointSize: 20
                    visible: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                    anchors.topMargin: 0
                }
            }

            Rectangle {
                id: rectangle024
                height: 75
                color: "lightblue"
                //text: qsTr("Button")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: rectangle023.bottom
                anchors.topMargin: 0

                Label {
                    id: label4
                    x: 0
                    z: 2
                    width: 200
                    height: 75
                    color: "darkgreen";
                    text: qsTr("混合整数规划")
                    font.pointSize: 20
                    visible: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                    anchors.topMargin: 0
                }
//                Timer {
//                    interval: 50000
//                    running: true
//                    repeat: false
//                    onTriggered: Qt.quit()
//                }
            }
        }

        Button {
            id: back
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("返回")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 90
            anchors.left: parent.left
            onClicked: {
                home.visible =true;
                menu.visible =false;
            }
        }

        Button {
            id: menuquit
            x: 598
            y: 454
            text: qsTr("退出")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 90
            anchors.right: parent.right
            anchors.rightMargin: 120
            onClicked: Qt.quit()
        }
    }

    Item {
        id: notebook
        x: 0;y: 0;z: 2
        width: parent.width
        height: parent.height
        visible: false

        Rectangle {
            id: rectanglenote
            width: parent.width
            height: parent.height
            color: "lightblue"

            TextEdit {
                id: rectanglenotedit
                width: parent.width
                height: parent.height
                color: "white"
                text: qsTr("这是我的笔记:\n ")
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 24

                Button {
                    id: textsave
                    x: 606
                    y: 397
                    text: qsTr("保存笔记")
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 90
                    anchors.right: parent.right
                    anchors.rightMargin: 120
                    onClicked: messageDialog.show(qsTr("本功能尚待开发"))
                }
            }
        }

        Button {
            id: reback
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("返回")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 90
            anchors.left: parent.left
            onClicked: {
                notebook.visible =false;
            }
        }
    }

    Item {
        id: window11
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        visible: false

        Button {
            id: back11
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("返回首页")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.left: parent.left
            onClicked: {
                window11.visible =false;
                home.visible =true;
            }
        }

        Button {
            id: last11
            x: 606
            y: 397
            text: qsTr("到主菜单")
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            onClicked: {
                window11.visible =false;
                menu.visible =true;
            }
        }

        Button {
            id: next11
            x: 243
            y: 397
            text: qsTr("例题讲解")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 120
            onClicked: {
                window11.visible =false;
                window12.visible =true;
            }
        }

        Image {
            id: image11
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            z: -1
            opacity: 1
            visible: true
            source: "images/yinru1.png"
        }



    }

    Item {
        id: window12
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        visible: false

        Rectangle {
            id: mask1
            color: "lightblue"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 160
            visible: true
            Timer {
                interval: 13000
                running: true
                repeat: false
                onTriggered: {
                    mask1.visible =false
                }
            }

            TextEdit {
                id: textEdit3
                x: 105
                y: 20
                width: 80
                height: 20
                color: "black"
                text: qsTr("最大值为（）")
                font.pixelSize: 20
            }

            TextEdit {
                id: textEdit1
                visible: false
                x: 310
                y: 120
                width: 120
                height: 30
                text: qsTr("恭喜你，答对了！")
                color: "darkgreen"
                font.pixelSize: 20
            }

            TextEdit {
                id: textEdit2
                visible: false
                x: 310
                y: 120
                color: "darkgreen"
                width: 120
                height: 30
                text: qsTr("很遗憾，答错了！")
                font.pixelSize: 20
            }

            RadioButton {
                id: radioButton1
                x: 135
                y: 60
                width: 50
                height: 15
                text: qsTr("A.18")
                scale: 1.3
                onClicked: {
                    textEdit1.visible =true;
                    textEdit2.visible =false;
                }
            }

            RadioButton {
                id: radioButton2
                x: 295
                y: 60
                width: 50
                height: 15
                text: qsTr("B.15")
                scale: 1.3
                onClicked: {
                    textEdit1.visible =false;
                    textEdit2.visible =true;
                }
            }

            RadioButton {
                id: radioButton3
                x: 455
                y: 60
                width: 50
                height: 15
                text: qsTr("C.12")
                scale: 1.3
                onClicked: {
                    textEdit1.visible =false;
                    textEdit2.visible =true;
                }
            }

            RadioButton {
                id: radioButton4
                x: 615
                y: 60
                width: 50
                height: 15
                text: qsTr("D.10")
                scale: 1.3
                onClicked: {
                    textEdit1.visible =false;
                    textEdit2.visible =true;
                }
            }

        }

        Button {
            id: back12
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("到主菜单")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.left: parent.left
            onClicked: {
                window12.visible =false;
                menu.visible =true;
            }
        }

        Button {
            id: last12
            x: 606
            y: 397
            text: qsTr("回顾概念")
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            onClicked: {
                window12.visible =false;
                window11.visible =true;
            }
        }

        Button {
            id: next12
            x: 243
            y: 397
            text: qsTr("举一反三")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 120
            onClicked: {
                window12.visible =false;
                window13.visible =true;
            }
        }

        Image {
            id: image12
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            z: -1
            opacity: 1
            visible: true
            source: "images/liti1.png"
        }


    }

    Item {
        id: window13
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        visible: false

        Button {
            id: back13
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("到主菜单")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.left: parent.left
            onClicked: {
                window13.visible =false;
                menu.visible =true;
            }
        }

        Button {
            id: last13
            x: 606
            y: 397
            text: qsTr("回顾例题")
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            onClicked: {
                window13.visible =false;
                window12.visible =true;
            }
        }

        Button {
            id: next13
            x: 243
            y: 397
            text: qsTr("休息会吧")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 120
            onClicked: {
                window13.visible =false;
                menu.visible =true;
            }
        }

        Image {
            id: image13
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            z: -1
            opacity: 1
            visible: true
            source: "images/lianxi1.png"
        }
    }

    Item {
        id: window21
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        visible: false

        Button {
            id: back21
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("返回首页")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.left: parent.left
            onClicked: {
                menu.visible =false;
                window21.visible =false;
                home.visible =true;
            }
        }

        Button {
            id: last21
            x: 606
            y: 397
            text: qsTr("到主菜单")
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            onClicked: {
                window21.visible =false;
                menu.visible =true;
            }
        }

        Button {
            id: next21
            x: 243
            y: 397
            text: qsTr("例题讲解")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 120
            onClicked: {
                window21.visible =false;
                window22.visible =true;
            }
        }

        Image {
            id: image21
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            z: -1
            opacity: 1
            visible: true
            source: "images/yinru2.png"
        }
    }

    Item {
        id: window22
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        visible: false

        Button {
            id: back22
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("到主菜单")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.left: parent.left
            onClicked: {
                window22.visible =false;
                menu.visible =true;
            }
        }

        Button {
            id: last22
            x: 606
            y: 397
            text: qsTr("回顾概念")
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            onClicked: {
                window22.visible =false;
                window21.visible =true;
            }
        }

        Button {
            id: next22
            x: 243
            y: 397
            text: qsTr("举一反三")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 120
            onClicked: {
                window22.visible =false;
                window23.visible =true;
            }
        }

        Image {
            id: image22
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            z: -1
            opacity: 1
            visible: true
            source: "images/liti2.png"
        }
    }

    Item {
        id: window23
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        visible: false

        Button {
            id: back23
            y: 454
            anchors.leftMargin: 120
            anchors.topMargin: 60
            text: qsTr("到主菜单")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.left: parent.left
            onClicked: {
                window23.visible =false;
                menu.visible =true;
            }
        }

        Button {
            id: last23
            x: 606
            y: 397
            text: qsTr("回看例题")
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            onClicked: {
                window23.visible =false;
                window22.visible =true;
            }
        }

        Button {
            id: quit23
            x: 243
            y: 397
            text: qsTr("休息会吧")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 120
            onClicked: Qt.quit()
        }

        Image {
            id: image23
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            z: -1
            opacity: 1
            visible: true
            source: "images/lianxi2.png"
        }
    }
}
