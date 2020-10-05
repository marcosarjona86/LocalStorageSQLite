function cargaInformacion() {
    // lee la informacion de la tabla 'persona'
    db.transaction(function(tx){
        // var sql = 'SELECT * FROM persona';
        var sql = 'SELECT id,nombre,edad FROM persona';
        var rs = tx.executeSql(sql);
        var myId; // id de la persona
        var myNombre; // nombre de la persona
        var myEdad; // edad de la persona
        var ix;
        for (ix= 0; ix < rs.rows.length; ++ix) {
            myId = rs.rows.item(ix).id;
            myNombre = rs.rows.item(ix).nombre;
            myEdad = rs.rows.item(ix).edad;
            personasListView.model.append({
               id: myId,
               nombre: myNombre,
               edad: myEdad,
            });
        }
    });
}

