<?php /* Smarty version 2.6.28, created on 2020-05-11 11:28:22
         compiled from C:%5Cwamp%5Cwww%5Cdoc//templates/common/out.tpl */ ?>
<div id="filetable_wrapper">
<form name="table" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>
">
    <table id="filetable" class="display" border="0" cellpadding="1" cellspacing="1">
    <thead>
        <tr>
            <?php if ($this->_tpl_vars['showCheckBox']): ?>
                <th class="sorting_desc_disabled sorting_asc_disabled"><input type="checkbox" id="checkall"/></th>
            <?php endif; ?>
            <th class="sorting">ID</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_view']; ?>
</th>
            <th class="sorting"><?php echo $this->_tpl_vars['g_lang_label_file_name']; ?>
</th>
            <th class="sorting"><?php echo $this->_tpl_vars['g_lang_label_description']; ?>
</th>
            <th class="sorting"><?php echo $this->_tpl_vars['g_lang_label_author']; ?>
</th>
            <th class="sorting">Denumire</th>
            <th class="sorting">Limba</th>
            <th class="sorting">Disciplina</th>
            <th class="sorting"><?php echo $this->_tpl_vars['g_lang_label_department']; ?>
</th>
            <th class="sorting"><?php echo $this->_tpl_vars['g_lang_label_size']; ?>
</th>
            <th class=""><?php echo $this->_tpl_vars['g_lang_label_status']; ?>
</th>
        </tr>
    </thead>
    <tbody>
        <?php $_from = $this->_tpl_vars['file_list_arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['file_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['file_list']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['file_list']['iteration']++;
?>
        <tr <?php if ($this->_tpl_vars['item']['lock'] == true): ?>class="gradeX"<?php endif; ?> >
            <?php if ($this->_tpl_vars['item']['showCheckbox'] == '1'): ?>
                <?php $this->assign('form', 1); ?>
                <td><input type="checkbox" class="checkbox" value="<?php echo $this->_tpl_vars['item']['id']; ?>
" name="checkbox[]"/></td>
            <?php endif; ?>
            <td class="center"><?php echo $this->_tpl_vars['item']['id']; ?>
</td>
            <td class="center" style="width: 50px;">
                <?php if ($this->_tpl_vars['item']['view_link'] == 'none'): ?>
                    &nbsp;
                <?php else: ?>
                    <a href="<?php echo $this->_tpl_vars['item']['view_link']; ?>
"><?php echo $this->_tpl_vars['g_lang_outpage_view']; ?>
</a></td>
                <?php endif; ?>
            <td><a href="<?php echo $this->_tpl_vars['item']['details_link']; ?>
"><?php echo $this->_tpl_vars['item']['filename']; ?>
</a></td>
            <td ><?php echo $this->_tpl_vars['item']['description']; ?>
</td>
            <td><?php echo $this->_tpl_vars['item']['file_author']; ?>
</td>
             <td><?php echo $this->_tpl_vars['item']['Denumire']; ?>
</td>
             <td><?php echo $this->_tpl_vars['item']['informatie']; ?>
</td>
             <td><?php echo $this->_tpl_vars['item']['cat_name']; ?>
</td>
            <td><?php echo $this->_tpl_vars['item']['school_class']; ?>
</td>
            <td ><?php echo $this->_tpl_vars['item']['filesize']; ?>
</td>
            <td class="center">
                <?php if ($this->_tpl_vars['item']['lock'] == false): ?>
                    <img src="<?php echo $this->_tpl_vars['g_base_url']; ?>
/images/file_unlocked.png" alt="unlocked" />
		<?php else: ?>
                    <img src="<?php echo $this->_tpl_vars['g_base_url']; ?>
/images/file_locked.png" alt="locked" />
                <?php endif; ?>
            </td>
        </tr>
        <?php endforeach; endif; unset($_from); ?>
    </tbody>
    <tfoot>
       <tr>
           <?php if ($this->_tpl_vars['item']['showCheckbox'] == '1'): ?>
           <th></th>
           <?php endif; ?>
            <th>ID</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_view']; ?>
</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_file_name']; ?>
</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_description']; ?>
</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_author']; ?>
</th>
             <th>Denumire</th>
            <th>Limba</th>
            <th>Disciplina</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_department']; ?>
</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_size']; ?>
</th>
            <th><?php echo $this->_tpl_vars['g_lang_label_status']; ?>
</th>
        </tr>
    </tfoot>
    <?php if ($this->_tpl_vars['form'] != '1'): ?>
</form>
    <?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['limit_reached']): ?>
    <div class="text-warning"><?php echo $this->_tpl_vars['g_lang_message_max_number_of_results']; ?>
</div>
<?php endif; ?>
<br />