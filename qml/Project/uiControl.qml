import QtQuick 2.0
import QtQuick.Controls 2.4
import "../../script/global.js"  as G

Item {
    id: root
    width: G.width;
    height: G.height

    Flow {
        id: flow
        anchors.fill: parent
        /*******************************************************************
         * Control 是用户界面控件的基本类型。
         * 它接收来自窗口系统的输入事件，并在屏幕上描绘自身的表示。
         ******************************************************************/
        Control {
            id: control00
            width: parent.width/2
            height: parent.height/4
            //        availableWidth: [ brief : width - horizontal padding, 可用宽度，一般没有变化]
            //        availableHeight:  [ brief : height - vertical padding, 可用高度，一般没有变化]
            onAvailableWidthChanged: {
                console.log("[ control ] availableWidth = " + control00.width);
            }
            onAvailableHeightChanged: {
                console.log("[ control ] availableHeight = " + control00.height);
            }
            background: Rectangle { color: control00.focus ? "blue" : "white" } // [ brief : 背景，定制样式]
            contentItem: Rectangle { color: "red" } // [ brief : 指定宽高无效，定制样式]
            padding: 50  // [ brief : 上，下，左，右 的距离边界的位置 ]
            //        leftPadding: 50 // [ brief : 左间距 ]
            //        rightPadding: 50 // [ brief : 右间距 ]
            //        topPadding: 50 // [ brief : 上间距 ]
            //        bottomPadding: 50 // [ brief : 下间距 ]
            focusPolicy: Qt.StrongFocus
                        /* [ brief : 聚焦策略]     [经过测试，Tab键\滑轮有效，单机没有效果，但是可以靠其他方式实现]
                        * Qt.TabFocus 0x01 : 接受 Tab键 焦点
                        * Qt.ClickFocus 0x02 : 接受 鼠标点击 焦点
                        * Qt.WheelFocus 0x04 : 接受 鼠标滚轮 焦点
                        * Qt.StrongFocus 0x08 : both, tab & clicked
                        * Qt.NoFocus : 0x00 不接受，default*/
            onFocusChanged: {
                console.log("[ control00 ] focus changed " + control00.focus);
            }
//            focusReason: [ brief : 上次焦点更改的原因 ]
            onFocusReasonChanged: {
               console.log("[ control00 ] FocusReason changed " + control00.focusReason);
            }
//            font // [ brief : 字体，这里需要设置字体？？？ ]
            hoverEnabled: true
//            hovered: // [ brief : <read-only> 是否有悬浮物]
            onHoveredChanged: {
               console.log("[ control00 ] hovered changed " + control00.hovered);
            }
//            locale: // [ brief : 环境 ？？？]
//            mirrored: // [ brief : 横向（左右的镜像），默认为 false，需要使用附加属性LayoutMirroring 激活，参照 control04 ]
//            LayoutMirroring.enabled: true
//            LayoutMirroring.childrenInherit: true
//            palette: // [ brief : 调色板，为各个模块，定制颜色]
//            spacing: // [ brief : 两个控件之间的距离]
//            visualFocus: // [ brief : 该属性改变仅在 与 keys交互时，而不是touch 或者 mouse]
//            wheelEnabled: true // [ brief : 滚轮事件]
            onVisualFocusChanged: {
               console.log("[ control00 ] visualFocus changed " + control00.visualFocus);
            }

            MouseArea {
                anchors.fill: parent
                onClicked: control00.focus = true;
            }
        }
        Control {
            id: control01
            width: parent.width/2
            height: parent.height/4
            background: Rectangle { color: control01.focus ? "blue" : "white" }
            contentItem: Rectangle { color: "yellow" }
            padding: 50
            focusPolicy: Qt.StrongFocus
            onFocusChanged: {
                console.log("[ control01 ] focus changed " + control01.focus);
            }
            MouseArea {
                anchors.fill: parent
                onClicked: control01.focus = true;
            }
        }
        Control {
            id: control02
            width: parent.width/2
            height: parent.height/4
            background: Rectangle { color: control02.focus ? "blue" : "white" }
            contentItem: Rectangle { color: "yellow" }
            padding: 50
            focusPolicy: Qt.StrongFocus
            onFocusChanged: {
                console.log("[ control02 ] focus changed " + control02.focus);
            }
            MouseArea {
                anchors.fill: parent
                onClicked: control02.focus = true;
            }
        }
        Control {
            id: control03
            width: parent.width/2
            height: parent.height/4
            background: Rectangle { color: control03.focus ? "blue" : "white" }
            contentItem: Rectangle { color: "red" }
            padding: 50
            focusPolicy: Qt.StrongFocus
            onFocusChanged: {
                console.log("[ control03 ] focus changed " + control03.focus);
            }
            MouseArea {
                anchors.fill: parent
                onClicked: control03.focus = true;
            }
        }
    }

    Control {
        id: control04
        y: parent.height/2
        width: parent.width/2
        height: parent.height/4
        LayoutMirroring.enabled: true
        LayoutMirroring.childrenInherit: true
        Image {
            anchors.left: parent.left
            source: "qrc:/images/control.png"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(" control04 mirror = " + control04.mirrored);
            }
        }

    }

    Component.onCompleted: {
        console.log("[ uiControl ] Completed !!!");
    }
}
