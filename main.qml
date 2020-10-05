import QtQuick 2.12
import QtQuick.Controls 2.1
import QtQuick.LocalStorage 2.0
import'JSMain.js' as JSMain

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("LocalStorage Application")

    // identificador de la base de datos
    property string dbId: 'MyDatabase'

    // version de la base de datos
    property string dbVersion: '1.0'

    // descripcion de la base de datos
    property string dbDescription:'Database application'

    //tamaño estimado de la base de datos
    property  int dbSize: 1000000

    // base de datos
    property var db

    // constructor
    Component.onCompleted: {
        JSMain.ejecutaConfiguracionInicial();
    }

    /*
     * stackview principal de la aplicacion donde se desplazan las pantallas
     */
     StackView {
        id: stackView
        anchors.fill: parent
        initialItem: inputForm
    }

    // formulario de visualizacion de datos
    Component {
        id: dataForm
        DataForm {}
    }

    // formaulario de entrada de datos
    Component {
        id: inputForm
        InputForm {}
    }
 }
