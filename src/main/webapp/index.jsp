<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto>lista=(ArrayList<Producto>)session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC EXAMEN mcl</title>
    </head>
    <body>
     
    <center>
        <fieldset style="border:2px groove #ccc;width:350px">  
            <fieldset style="background-color:#ffffff;border:4px groove #ccc;width:350px">
        <h4>PRIMER PARCIAL TEM-742</h4>
        <h4>Nombre: Mauricio Cauna Larico</h4>
        <h4>Carnet:      8388377</h4>              
        </fieldset>
        <h1>PRODUCTOS</h1>
         <a href="PrincipalControlador?op=nuevo">Nuevo Producto</a>
         <br> 
        <fieldset style="background-color:Beige;border:6px groove #ccc;width:350px">
            <table  border="1" style="padding: 5px;text-align: left;border: 1px solid black;font-family: 'Encode Sans SC',sans-serif">
            <tr style="background-color:#cccccc" >
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>

            </tr>
            
            <%
                if(lista!=null){
                    for(Producto item:lista){
                
            %>
            
            <tr bgcolor='#ffffff'>
                <td><%=item.getId() %></td>
                <td><%=item.getDescripcion()%></td>
                <td><%=item.getCantidad() %></td>
                <td><%=item.getPrecio()%></td>
                <td><%=item.getCategoria()%></td>
                <td><a><a href="PrincipalControlador?op=editar&id=<%=item.getId()%>" >Editar</a></td>
                <td><a><a href="PrincipalControlador?op=eliminar&id=<%=item.getId()%>"
                          onclick='return confirm("Esta seguro de eliminar?");'>Eliminar</a></td>
                
            </tr>
            <%
                    }
                }
            %>
            
        </table>
        </fieldset>
        </fieldset>
        </center>
      
    </body>
</html>
