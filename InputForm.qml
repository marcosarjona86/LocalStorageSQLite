import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.LocalStorage 2.0
import 'InputFormJS.js' as InputFormJS

Item {
    anchors.fill: parent
    id: parentObject

    Column {  
        anchors.fill: parent
        spacing: 2

        Row {
            spacing: 2

           Label {
             id: nombreLabel
             text: 'Nombre'
            }

           TextField {
               id: nombreTextField
               width: parentObject.width - nombreLabel.width
           }
        }

    Row {
        spacing: 2

        Label {
            id: edadLabel
            text: 'Edad'
        }

        TextField {
            id: edadTextField
            width: parentObject.width - edadLabel.width
        }
    }

    Button {
        id: guardarButton
        text: 'GUARDAR' // SAVE
        width: parent.width
        height: 50

        onClicked: {
            InputFormJS.guardaInformacion();
        }
      }

    /*Button {
        id: limpiarButton
        text: 'LIMPIAR' // CLEAR
        width: parent.width
        height: 50

        onClicked: {
            InputFormJS.limpiaInformacion();
        }
      }*/

    Button {
        id: atrasButton
        text: 'ATRAS' // GO BACK
        width:  parent.width
        height: 50

        onClicked: {
           stackView.push(dataForm);
        }
      }
   }
}



