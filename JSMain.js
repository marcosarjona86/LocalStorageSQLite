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
}
