import QtQuick 2.9
import QtQuick.Controls 2.4
import "../../script/global.js"  as G

Item {
    width: G.width
    height: G.height
//    ListModel {
//        id: appModel
//        ListElement { name: "Music"; icon: "qrc:/images/AudioPlayer_48.png" }
//        ListElement { name: "Movies"; icon: "qrc:/images/VideoPlayer_48.png" }
//        ListElement { name: "Camera"; icon: "qrc:/images/Camera_48.png" }
//        ListElement { name: "Calendar"; icon: "qrc:/images/DateBook_48.png" }
//        ListElement { name: "Messaging"; icon: "qrc:/images/EMail_48.png" }
//        ListElement { name: "Todo List"; icon: "qrc:/images/TodoList_48.png" }
//        ListElement { name: "Contacts"; icon: "qrc:/images/AddressBook_48.png" }
//    }
//    Component {
//        id: dlg01
//        Item {
//            width: 100; height: 100
//            Image {
//                source: icon
//                smooth: true
//            }
//            MouseArea {
//                anchors.fill: parent
//                onClicked: view01.currentIndex = index
//            }
//        }
//    }

//    PathView {
//        id: view01
//        anchors.fill: parent
//        preferredHighlightBegin: 0.5
//        preferredHighlightEnd: 0.5
//        focus: true
//        model: appModel
//        delegate: dlg01
//        path: Path {
//            startX: 10
//            startY: 100
//            PathAttribute { name: "iconScale"; value: 0.5 }
//            PathQuad { x: 250; y: 100; controlX: 50; controlY: 100 }
//            PathAttribute { name: "iconScale"; value: 1.0 }
//            PathQuad { x: 490; y: 100; controlX: 450; controlY: 100 }
//            PathAttribute { name: "iconScale"; value: 0.5 }
//        }
//    }
    TabBar {
        id: tabBar
        width: parent.width
        height: parent.height
        onCurrentIndexChanged: {
            console.log(" index changed !!! ");
        }
        onCurrentItemChanged: {
            console.log(" item changed !!! ");
        }

        TabButton {
            text: " 1 "
        }
        TabButton {
            text: " 2 "
        }
        TabButton {
            text: " 3 "
        }
    }

}
