<?php /* Smarty version 2.6.28, created on 2020-04-26 12:09:23
         compiled from C:%5Cwamp%5Cwww%5Cdoc//templates/common/user_add.tpl */ ?>
<form name="add_user" id="add_user" action="user.php" method="POST" enctype="multipart/form-data">
    <table border="0" cellspacing="5" cellpadding="5">
        <?php echo $this->_tpl_vars['onBeforeAddUser']; ?>

        <tr><td><b><?php echo $this->_tpl_vars['g_lang_label_last_name']; ?>
</b></td><td><input name="last_name" type="text" class="required" minlength="2" maxlength="255"></td></tr>
        <tr><td><b><?php echo $this->_tpl_vars['g_lang_label_first_name']; ?>
</b></td><td><input name="first_name" type="text" class="required" minlength="2" maxlength="255"></td></tr>
        <tr><td><b><?php echo $this->_tpl_vars['g_lang_username']; ?>
</b></td><td><input name="username" type="text" class="required" minlength="2" maxlength="25"></td></tr>
        
        <?php if ($this->_tpl_vars['mysql_auth']): ?>
        <tr>
            <td><b><?php echo $this->_tpl_vars['g_lang_userpage_password']; ?>
</b></td>
            <td>
                <input name="password" type="text" value="<?php echo $this->_tpl_vars['rand_password']; ?>
" class="required" minlength="5" maxlength="10">
            </td>
        </tr>
        <?php endif; ?>
        
        <tr>
            <td><b><?php echo $this->_tpl_vars['g_lang_label_email_address']; ?>
</b></td>
            <td>
                <input name="Email" type="text" class="required email" maxlength="50">
            </td>
        </tr>
        <tr>

            <td><b><?php echo $this->_tpl_vars['g_lang_label_is_admin']; ?>
?</b></td>
            <td>
                <input name="admin" type="checkbox" value="1" id="cb_admin">
            </td>
        </tr>
        <tr>
            <td><b><?php echo $this->_tpl_vars['g_lang_userpage_can_add']; ?>
?</b></td>
            <td>
                <input name="can_add" type="checkbox" value="1" id="cb_can_add"  checked="checked">
            </td>
        </tr>
        <tr>
            <td><b><?php echo $this->_tpl_vars['g_lang_userpage_can_checkin']; ?>
?</b></td>
            <td>
                <input name="can_checkin" type="checkbox" value="1" id="cb_can_checkin"  checked="checked">
            </td>
        </tr>
        <tr>
            <td align="center">
                <div class="buttons">
                    <button id="submitButton" class="positive" type="Submit" name="submit" value="Add User"><?php echo $this->_tpl_vars['g_lang_userpage_button_add_user']; ?>
</button>
                </div>
            </td>
            <td>
                <div class="buttons">
                    <button id="cancelButton" class="negative cancel" type="Submit" name="cancel" value="Cancel"><?php echo $this->_tpl_vars['g_lang_userpage_button_cancel']; ?>
</button>
                </div>
            </td>
        </tr>
    </table>
</form>
<script>
    <?php echo '
    $(document).ready(function(){
        $(\'#submitButton\').click(function(){
            $(\'#add_user\').validate();
        })
    });
    '; ?>

</script>