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

    <h2 class="option">ADMINISTRAR USUARIOS</h2>

    <a class="option2" href="admin/register">Agregar ADMIN</a>
        <table>
            <thead>
                <tr>
                    <th>Usuario</th><th>E-mail</th><th>Eliminar</th><th>Editar rol</th>
                </tr>
            </thead>
            <tbody id="viandasTable">
                {foreach from=$usuarios item=user}
                    <tr><td>{$user->user}</td><td>{$user->mail}</td>
                    <td class="botonBorrar"> <a href='eliminarUser/{$user->id_user}'><button class="botonBorrarTD" id="{$user->id_user}"><i class="fa fa-trash"></i></button></a></td>
                    <td><a href='editarUser/{$user->id_user}' ><button class="botonEditarTD" id="{$user->id_user}"><i class="fa fa-edit"></i></button></a></td></tr>
                {/foreach}
            </tbody>
        </table>

        <a class="botonAdministrar" href="admin"> Volver a administrar</a>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>