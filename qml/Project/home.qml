import QtQuick 2.9
import QtQuick.Controls 2.4
import "../../script/global.js"  as G

Item {
    width: G.width
    height: G.height
//    TabBar {
//        width: parent.width
//        height: parent.height
//        TabButton {
//            text: " 1 "
//        }
//        TabButton {
//            text: " 2 "
//        }
//        TabButton {
//            text: " 3 "
//        }
//    }
    MouseArea {
        anchors.fill:parent
        onClicked: {
            console.log("==========");
        }
    }
}
