<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store</title>
    <link rel="stylesheet" href="../css/item.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/styleAdmin.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <base href="{$base_url}">
</head>
<body>
    <!-------------HEADER----------->
    {include file="header.tpl"}
    
    <!-------------CONTENT----------->
    <div class="content">
        <h2 class="tituloSeccion">ADMINISTRAR USUARIOS</h2>
        <a class="boton1" href="admin/register">Agregar administrador</a>
        <a class="botonVolver" href="admin"> Volver a administrar</a>
    </div>
    <div class="tabla">
        <table>
            <thead>
                <tr>
                    <th>Usuario</th><th>E-mail</th><th>Eliminar</th>
                </tr>
            </thead>
            <tbody id="viandasTable">
                {foreach from=$usuarios item=user}
                    <tr><td>{$user->user}</td><td>{$user->mail}</td>
                    <td class="botonBorrar"> <a href='eliminarUser/{$user->id_user}'><button class="botonBorrarTD" id="{$user->id_user}"><i class="fa fa-trash"></i></button></a></td></tr>
                {/foreach}
            </tbody>
        </table>
    </div>

    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>