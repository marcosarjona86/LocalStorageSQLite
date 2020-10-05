function guardaInformacion() {
    // guarda la informacion en la base de datos
    var nombre = nombreTextField.text;
    var edad = edadTextField.text;
    db.transaction(function(tx) {
        var sql = 'INSERT INTO persona (nombre,edad) VALUES (\''
                + nombre + '\','+ edad + ')';
        tx.executeSql(sql);
    });

    // regresamos a la lista de personas (dataForm)
    stackView.push(dataForm);

}
