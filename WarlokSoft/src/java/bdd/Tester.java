package bdd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Adriana
 */
public class Tester {

    public boolean Insertar(String consulta) throws SQLException {
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;

        try {
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(consulta);

            preparedStatement.executeUpdate();
            dbConnection.close();
            return true;
        } catch (SQLException e) {
            return false;
        } finally {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        }
    }

    public ArrayList getUsuarioTipo(String correo, String pass){
        ArrayList ar = new ArrayList();
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "SELECT idUsuario, idRol from usuario where usuario.correo = '"+correo+"' and usuario.contraseña = '"+pass+"';";
                
        try{
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(selectSQL);
            
            ResultSet rs;
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                ar.add(rs.getString("idUsuario"));
                ar.add(rs.getString("idRol"));
            }
        }catch(Exception e){
            System.out.println("No se pudo: "+e);
        }
        
        return ar;
    }
    
    public ArrayList getPass(String usuario, String correo){
        ArrayList ar = new ArrayList();
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "SELECT contraseña from usuario where usuario.nombre = '"+usuario+"' and usuario.correo = '"+correo+"';";
                
        try{
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(selectSQL);
            
            ResultSet rs;
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                ar.add(rs.getString("contraseña"));
            }
        }catch(Exception e){
            System.out.println("No se pudo: "+e);
        }
        return ar;
    }
    
    public ArrayList getEstadoPerfil(int idUsuario){
        ArrayList ar = new ArrayList();
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "Select estado.descripcion from estado where estado.idUsuario = '"+idUsuario+"';";
                
        try{
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(selectSQL);
            
            ResultSet rs;
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                ar.add(rs.getString("descripcion"));
            }
        }catch(Exception e){
            System.out.println("No se pudo: "+e);
        }
        return ar;
    }
    
    public ArrayList getIdNickname(String nickname){
        ArrayList ar = new ArrayList();
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "Select usuario.idUsuario from usuario where usuario.nickname = '"+nickname+"';";
                
        try{
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(selectSQL);
            
            ResultSet rs;
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                ar.add(rs.getString("idUsuario"));
            }
        }catch(Exception e){
            System.out.println("No se pudo: "+e);
        }
        return ar;
    }
    
    public ArrayList getContactos(int idUsuario){
        ArrayList ar = new ArrayList();
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "Select contacto.idContactoU from contacto where contacto.idUsuario = '"+idUsuario+"';";
                
        try{
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(selectSQL);
            
            ResultSet rs;
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                ar.add(rs.getString("idContactoU"));
            }
        }catch(Exception e){
            System.out.println("No se pudo: "+e);
        }
        return ar;
    }
    
    public ArrayList getConversacion(int idEmisor, int idReceptor){
        ArrayList ar = new ArrayList();
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "SELECT mensaje.descripcion FROM mensaje WHERE mensaje.idEmisor = '"+idEmisor+"' AND mensaje.idReceptor = '"+idReceptor+"';";
                
        try{
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(selectSQL);
            
            ResultSet rs;
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                ar.add(rs.getString("descripcion"));
            }
        }catch(Exception e){
            System.out.println("No se pudo: "+e);
        }
        return ar;
    }
    
    public ArrayList getProyecto(int idUsuario){
        ArrayList ar = new ArrayList();
        Connection dbConnection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "SELECT proyecto.nombre, proyecto.fechaInicio, usuario.nombre FROM proyecto, usuario WHERE proyecto.idUsuario = '"+idUsuario+"' and usuario.idUsuario = '"+idUsuario+"';";
                
        try{
            dbConnection = new Conexion().getConnection();
            preparedStatement = dbConnection.prepareStatement(selectSQL);
            
            ResultSet rs;
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                ar.add(rs.getString("nombre"));
                ar.add(rs.getString("fechaInicio"));
                ar.add(rs.getString("usuario.nombre"));
            }
        }catch(Exception e){
            System.out.println("No se pudo: "+e);
        }
        return ar;
    }
}
