import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import "../../script/global.js" as G

Window {
    visible: true
    width: G.width
    height: G.height
    title: qsTr("Hello World")
    color: "transparent"

    Loader {
        id: winLoader
    }

    Component.onCompleted: {
        G.setGlobalLoader(winLoader);
        G.link("qrc:/qml/Project/uiControl.qml");
    }

}
