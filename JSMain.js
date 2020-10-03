function ejecutaConfiguracionInicial() {
    // crea la instancia del objeto de base de datos
    db = LocalStorage.openDatabaseSync(dbId, dbVersion, dbDescription, dbSize);

    // configura una tabla dentro de la base de datos
    db.transaction(function(tx) {
        var sql = 'CREATE TABLE IF NOT EXISTS persona'
        + '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
        + 'nombre TEXT NOT NULL, edad INTERGET NOT NULL)';
        tx.executeSql(sql);
    });

    // lee la informacion de la tabla 'persona'
    db.transaction(function(tx){
        // var sql = 'SELECT * FROM persona';
        var sql = 'SELECT id,nombre,edad FROM persona';
        var rs = tx.execute(sql);
        var myId; // id de la persona
        var myNombre; // nombre de la persona
        var myEdad; // edad de la persona
        var ix;
        for (ix= 0; ix < rs.rows.length; ++ix) {
            id = rs.rows.item(ix).id;
            nombre = rs.rows.item(ix).nombre;
            edad = rs.rows.item(ix).edad;
            personasListView.model.append({
               id: myId,
               nombre: myNombre,
               edad: myEdad,
            });
        }
    });
}
