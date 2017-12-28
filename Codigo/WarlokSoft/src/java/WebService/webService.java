/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebService;

import bdd.Tester;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author giann
 */
@WebService(serviceName = "NewWebService")
public class webService {
    
    @WebMethod(operationName = "Insertar")
    public boolean Insertar(@WebParam(name = "consulta") String consulta){
        Tester t = new Tester();
        try{
            return t.Insertar(consulta);
        }
        catch(SQLException ex){
            return false;
        }
    }
    
    @WebMethod(operationName = "getUsuarioTipo")
    public ArrayList getUsuarioTipo(@WebParam(name = "correo") String correo, @WebParam(name = "pass") String pass)
    {
        Tester t = new Tester();
        return t.getUsuarioTipo(correo, pass);
    }
    
     @WebMethod(operationName = "getPass")
    public ArrayList getPass(@WebParam(name = "usuario") String usuario, @WebParam(name = "correo") String correo)
    {
        Tester t = new Tester();
        return t.getPass(usuario, correo);
    }
    
    @WebMethod(operationName = "getEstadoPerfil")
    public ArrayList getEstadoPerfil(@WebParam(name = "idUsuario") int idUsuario)
    {
        Tester t = new Tester();
        return t.getEstadoPerfil(idUsuario);
    }
    
    @WebMethod(operationName = "getIdNickname")
    public ArrayList getIdNickname(@WebParam(name = "nickname") String nickname)
    {
        Tester t = new Tester();
        return t.getIdNickname(nickname);
    }
   
    @WebMethod(operationName = "getContactos")
    public ArrayList getContactos(@WebParam(name = "idUsuario") int idUsuario)
    {
        Tester t = new Tester();
        return t.getContactos(idUsuario);
    }
    
    @WebMethod(operationName = "getConversacion")
    public ArrayList getConversacion(@WebParam(name = "idEmisor") int idEmisor, @WebParam(name = "idReceptor") int idReceptor)
    {
        Tester t = new Tester();
        return t.getConversacion(idEmisor, idReceptor);
    }
    
    @WebMethod(operationName = "getProyecto")
    public ArrayList getProyecto(@WebParam(name = "idUsuario") int idUsuario)
    {
        Tester t = new Tester();
        return t.getProyecto(idUsuario);
    }
}
