import QtQuick 2.0
import QtQuick.Controls 2.1 // en el video va el 2.1 pero es prueba.
import QtQml.Models 2.15 // no estaba en el video es una prueba.

Item {
    anchors.fill: parent

    ListView {
        id: personasListView
        spacing: 2

        anchors {
            left: paren.left
            right: parent.right
            top: parent.top
            button: atrasButton.top
        }

        model: ListModel {}

        delegate: Label {
            anchors {
                left: parent.left
                right: parent.right
            }

            height: 50

            // variable del delegado
            text: id + '' + nombre + '' + edad
        }
   }

    Button {
        id: atrasButton
        text: 'ATRAS' // GO BACK
        height: 50

        anchors {
            left: parent.left
            right: parent.right
            button: parent.button
        }

        onClicked: {
            stackView.push(inputForm);
        }
    }
}
