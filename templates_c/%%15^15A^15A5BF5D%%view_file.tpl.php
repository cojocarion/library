<?php /* Smarty version 2.6.28, created on 2015-06-16 10:59:06
         compiled from C:%5Cwamp%5Cwww%5Cdoc//templates/common/view_file.tpl */ ?>
<form action="view_file.php" name="view_file_form" method="get">
    <input type="hidden" name="id" value="<?php echo $this->_tpl_vars['file_id']; ?>
">
    <input type="hidden" name="mimetype" value="<?php echo $this->_tpl_vars['mimetype']; ?>
">
    <br />
    <?php echo $this->_tpl_vars['g_lang_message_to_view_your_file']; ?>
 
        <a class="body" style="text-decoration:none" target="_new" href="view_file.php?submit=view&id=<?php echo $this->_tpl_vars['file_id']; ?>
&mimetype=<?php echo $this->_tpl_vars['mimetype']; ?>
"><?php echo $this->_tpl_vars['g_lang_button_click_here']; ?>
</a>
    <br><br>
    <div class="buttons">
        <button class="regular" type="submit" name="submit" value="Download">
            <?php echo $this->_tpl_vars['g_lang_message_if_you_are_unable_to_view2']; ?>

        </button>
    </div>
    <?php echo $this->_tpl_vars['g_lang_message_if_you_are_unable_to_view1']; ?>

    <?php echo $this->_tpl_vars['g_lang_message_if_you_are_unable_to_view2']; ?>

    <?php echo $this->_tpl_vars['g_lang_message_if_you_are_unable_to_view3']; ?>

</form>