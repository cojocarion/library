

<script type="text/javascript" src="functions.js"></script>

<!-- file upload formu using ENCTYPE -->
<form id="addeditform" name="main" action="{$smarty.server.PHP_SELF}" method="POST" enctype="multipart/form-data" onsubmit="return checksec();">
    <input type="hidden" id="db_prefix" value="{$db_prefix}" />
<table border="0" cellspacing="5" cellpadding="5">
{assign var='i' value='0'}    
{foreach from=$t_name item=name name='loop1'}
    <input type="hidden" id="secondary{$i}" name="secondary{$i}" value="" /> <!-- CHM hidden and onsubmit added-->
    <input type="hidden" id="tablename{$i}" name="tablename{$i}" value="{$name}" /> <!-- CHM hidden and onsubmit added-->
    {assign var='i' value=$i+1}
{/foreach}
    <input id="i_value" type="hidden" name="i_value" value="{$i}" /> <!-- CHM hidden and onsubmit added-->
    <tr>
        <td>
            <a class="body" tabindex=1 href="help.html#Add_File_-_File_Location" onClick="return popup(this, 'Help')" style="text-decoration:none">{$g_lang_label_file_location}</a>
        </td>
        <td colspan=3>
            <input tabindex="0" name="file[]" type="file" multiple="multiple">
        </td>
    </tr>
    
{if $is_admin == true }
    <tr>
        <td>
            {$g_lang_editpage_assign_owner}
        </td>
        <td>
            <select name="file_owner">
            {foreach from=$avail_users item=user}
                <option value="{$user.id}" {$user.selected}>{$user.last_name}, {$user.first_name}</option>
            {/foreach}
            </select>
        </td>
    </tr>
{/if}    
    <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Category"  onClick="return popup(this, 'Help')" style="text-decoration:none">{$g_lang_category}</a>
        </td>
        <td colspan=3>
            <select tabindex=2 name="category" >
            {foreach from=$cats_array item=cat}
                <option value="{$cat.id}">{$cat.name}</option>
            {/foreach}
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Description" onClick="return popup(this, 'Help')" style="text-decoration:none">Clasa</a>
        </td>
          <td colspan=3>
            <select tabindex=2 name="school_class">
                <option value="Clasa 1">Clasa 1</option>
                <option value="Clasa 2">Clasa 2</option>
                <option value="Clasa 3">Clasa 3</option>
                <option value="Clasa 4">Clasa 4</option>
                <option value="Clasa 5">Clasa 5</option>
                <option value="Clasa 6">Clasa 6</option>
                <option value="Clasa 7">Clasa 7</option>
                <option value="Clasa 9">Clasa 9</option>
                <option value="Clasa 10">Clasa 10</option>
                <option value="Clasa 11">Clasa 11</option>
                <option value="Clasa 12">Clasa 12</option>
            </select>
        </td>
    </tr>
   <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Description" onClick="return popup(this, 'Help')" style="text-decoration:none">Autor</a>
        </td>
        <td colspan="3"><input tabindex="5" type="Text" name="file_author" size="50"></td>
    </tr>
     <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Description" onClick="return popup(this, 'Help')" style="text-decoration:none">Denumire</a>
        </td>
        <td colspan="3"><input tabindex="5" type="Text" name="Denumire" size="50"></td>
    </tr>
      <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Description" onClick="return popup(this, 'Help')" style="text-decoration:none">Limba</a>
        </td>
          <td colspan=3>
            <select tabindex=2 name="informatie" >
                <option value="Romana">Romana</option>
                <option value="Engleza">Engleza</option>
                <option value="Rusa">Rusa</option>
            </select>
        </td>
    </tr>
    <!-- Set Department rights on the file -->
    <tr id="departmentSelect">
        <td>
            <a class="body" href="help.html#Add_File_-_Department" onClick="return popup(this, 'Help')" style="text-decoration:none">{$g_lang_addpage_permissions}</a>
        </td>
        <td colspan=3>
            <hr />
            {include file='../../templates/common/_filePermissions.tpl'}
            <hr />
        </td>
    </tr>
    <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Description" onClick="return popup(this, 'Help')" style="text-decoration:none">{$g_lang_label_description}</a>
        </td>
        <td colspan="3"><input tabindex="5" type="Text" name="description" size="50"></td>
    </tr>