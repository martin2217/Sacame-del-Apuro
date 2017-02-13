package sacamedelapuro.arg.com.sacamedelapuro.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.provider.BaseColumns;

import sacamedelapuro.arg.com.sacamedelapuro.modelo.Servicio;

/**
 * Created by lgambino on 08/02/2017.
 */

public class ServicioDao extends GenericDaoImpl<Servicio>{


    public ServicioDao(Context context) {
        super(context);
    }

    public static class TablaServicio implements BaseColumns {
        public static final String TABLA = "SERVICIO";
        public static final String COLUMNA_NOMBRE = "NOMBRE";
        public static final String COLUMNA_DESCRIPCION = "DESCRIPCION";
        public static final String COLUMNA_OBSERVACIONES = "OBSERVACIONES";
        public static final String COLUMNA_PRECIO = "PRECIO";
        public static final String COLUMNA_ID_TIPO = "ID_TIPO";
    }

    private static final String[] columnas = {"NOMBRE", "DESCRIPCION", "OBSERVACIONES", "PRECIO", "ID_TIPO"};


    public void delete(Integer id) {
        super.delete(TablaServicio.TABLA, id);
    }

    public Cursor get(Integer id) {
        return super.get(TablaServicio.TABLA, columnas, id);
    }

    public Cursor getAll() {
        return super.getAll(TablaServicio.TABLA);
    }

    public void save(Servicio servicio) {
        ContentValues valores = valoresAll(servicio);

        super.save(TablaServicio.TABLA, valores);
    }

    public void update(Servicio servicio) {
        ContentValues valores = valoresAll(servicio);

        super.update(TablaServicio.TABLA, valores, servicio.getId());
    }

    private ContentValues valoresAll(Servicio servicio){
        ContentValues valores = new ContentValues();
        valores.put(TablaServicio.COLUMNA_NOMBRE, servicio.getNombre());
        valores.put(TablaServicio.COLUMNA_DESCRIPCION, servicio.getDescripcion());
        valores.put(TablaServicio.COLUMNA_OBSERVACIONES, servicio.getObservaciones());
        valores.put(TablaServicio.COLUMNA_PRECIO, servicio.getPrecio());
        valores.put(TablaServicio.COLUMNA_ID_TIPO, servicio.getTipo().getId());

        return valores;
    }
}
