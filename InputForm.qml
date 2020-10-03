import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.LocalStorage 2.0

Item {
    anchors.fill: parent

    Column {
        spacing: 2

        Row {
            spacing: 2

           Label {
             text: 'Nombre'
            }

           TextField {
               id: nombreTextField
           }
        }

    Row {
        spacing: 2

        Label {
            text: 'Edad'
        }

        TextField {
            id: edadTextField
        }
    }

    Button {
        id: guardarButton
        text: 'GUARDAR' // SAVE
        height: 50

        onClicked: {
            // guarda la informacion en la base de datos
            var nombre = nombreTextField.text;
            var edad = edadTextField.text;
            db.transaction(function(tx) {
                var sql = ' INSERT INTO persona (nombre,edad) VALUES (\''
                        + nombre + '\','+ edad + ')';
                tx.executeSql(sql);
            });

            // regresamos a la lista de personas (dataForm)
            stackView.push(dataForm);
        }
      }

    Button {
        id: atrasButton
        text: 'ATRAS' // GO BACK
        height: 50

        onClicked: {
           stackView.push(dataForm);
        }
      }
   }
}



