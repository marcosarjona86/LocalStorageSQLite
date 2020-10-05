import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQml.Models 2.15 // no estaba en el video es una prueba.
import QtQuick.LocalStorage 2.0
import 'DataFormJS.js' as DataFormJS

Item {
    anchors.fill: parent

    Component.onCompleted: {
        DataFormJS.cargaInformacion();

    }

    ListView {
        id: personasListView
        spacing: 15

        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: atrasButton.top // button
        }

        model: ListModel {}

        delegate: Text {
            anchors {
                left: parent.left
                right: parent.right
            }

            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter

            // variable del delegado
            text: 'ID: ' + id + '\n' + 'Nombre: ' + nombre + '\n'
                  + 'Edad: ' + edad
        }
   }

    Button {
        id: atrasButton
        text: 'ATRAS' // GO BACK
        height: 50

        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        onClicked: {
            stackView.push(inputForm);
        }
    }
}
