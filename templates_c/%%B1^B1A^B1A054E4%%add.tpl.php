<?php /* Smarty version 2.6.28, created on 2020-05-11 11:34:19
         compiled from C:%5Cwamp%5Cwww%5Cdoc//templates/common/add.tpl */ ?>


<script type="text/javascript" src="functions.js"></script>

<!-- file upload formu using ENCTYPE -->
<form id="addeditform" name="main" action="<?php echo $_SERVER['PHP_SELF']; ?>
" method="POST" enctype="multipart/form-data" onsubmit="return checksec();">
    <input type="hidden" id="db_prefix" value="<?php echo $this->_tpl_vars['db_prefix']; ?>
" />
<table border="0" cellspacing="5" cellpadding="5">
<?php $this->assign('i', '0'); ?>    
<?php $_from = $this->_tpl_vars['t_name']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop1'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop1']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['name']):
        $this->_foreach['loop1']['iteration']++;
?>
    <input type="hidden" id="secondary<?php echo $this->_tpl_vars['i']; ?>
" name="secondary<?php echo $this->_tpl_vars['i']; ?>
" value="" /> <!-- CHM hidden and onsubmit added-->
    <input type="hidden" id="tablename<?php echo $this->_tpl_vars['i']; ?>
" name="tablename<?php echo $this->_tpl_vars['i']; ?>
" value="<?php echo $this->_tpl_vars['name']; ?>
" /> <!-- CHM hidden and onsubmit added-->
    <?php $this->assign('i', $this->_tpl_vars['i']+1); ?>
<?php endforeach; endif; unset($_from); ?>
    <input id="i_value" type="hidden" name="i_value" value="<?php echo $this->_tpl_vars['i']; ?>
" /> <!-- CHM hidden and onsubmit added-->
    <tr>
        <td>
            <a class="body" tabindex=1 href="help.html#Add_File_-_File_Location" onClick="return popup(this, 'Help')" style="text-decoration:none"><?php echo $this->_tpl_vars['g_lang_label_file_location']; ?>
</a>
        </td>
        <td colspan=3>
            <input tabindex="0" name="file[]" type="file" multiple="multiple">
        </td>
    </tr>
    
<?php if ($this->_tpl_vars['is_admin'] == true): ?>
    <tr>
        <td>
            <?php echo $this->_tpl_vars['g_lang_editpage_assign_owner']; ?>

        </td>
        <td>
            <select name="file_owner">
            <?php $_from = $this->_tpl_vars['avail_users']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['user']):
?>
                <option value="<?php echo $this->_tpl_vars['user']['id']; ?>
" <?php echo $this->_tpl_vars['user']['selected']; ?>
><?php echo $this->_tpl_vars['user']['last_name']; ?>
, <?php echo $this->_tpl_vars['user']['first_name']; ?>
</option>
            <?php endforeach; endif; unset($_from); ?>
            </select>
        </td>
    </tr>
<?php endif; ?>    
    <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Category"  onClick="return popup(this, 'Help')" style="text-decoration:none"><?php echo $this->_tpl_vars['g_lang_category']; ?>
</a>
        </td>
        <td colspan=3>
            <select tabindex=2 name="category" >
            <?php $_from = $this->_tpl_vars['cats_array']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cat']):
?>
                <option value="<?php echo $this->_tpl_vars['cat']['id']; ?>
"><?php echo $this->_tpl_vars['cat']['name']; ?>
</option>
            <?php endforeach; endif; unset($_from); ?>
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
            <a class="body" href="help.html#Add_File_-_Department" onClick="return popup(this, 'Help')" style="text-decoration:none"><?php echo $this->_tpl_vars['g_lang_addpage_permissions']; ?>
</a>
        </td>
        <td colspan=3>
            <hr />
            <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => '../../templates/common/_filePermissions.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
            <hr />
        </td>
    </tr>
    <tr>
        <td>
            <a class="body" href="help.html#Add_File_-_Description" onClick="return popup(this, 'Help')" style="text-decoration:none"><?php echo $this->_tpl_vars['g_lang_label_description']; ?>
</a>
        </td>
        <td colspan="3"><input tabindex="5" type="Text" name="description" size="50"></td>
    </tr>