import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick 2.12
import QtQuick.Controls 2.5
import QtPurchasing 1.12
import QtQuick.Layouts 1.12
import "Components"

MainWindow{
    id: mainWind;
    property var windows: [];
    UIGlobal{id:ui}
    Component.onCompleted: {
        windows.push(absW.createObject(mainWind, {}));
    }
    Component{
        id: absW;
        AbstractWindow{title: "TestAbsWindow"}
    }
    GridLayout{
        anchors.fill: parent;
        MButton{}
        IcoButton{icon: ui.iconTypePlayerCycle}
        MCheckBox{}
        MRadioButton{}
        MTextFiled{}
        MProcessBar{}
        AnimatedImage{
            id: ani;
            source: "Components/Resource/Image/atom.png";
            Component.onCompleted: fuck();
            function fuck(){
                var str = source;
                console.log(str);
                if(source === str)
                    console.log("fuck!!");
            }
        }
    }
}