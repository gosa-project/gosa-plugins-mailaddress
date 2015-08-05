<table summary="{t}Mail Address Settings{/t}" style='width:100%;'>
 <tr>
  <td style='width:50%; '>  

   <h3>{t}User Mail Address{/t}</h3>

   <table summary="{t}Mail address{/t}">
    <tr>
     <td><label for="mail">{t}Mail address{/t}</label>{$must}</td>
     <td>
      {render acl=$mailACL}
      <input type='text' id="mail" name="mail" size=35 maxlength=65 value="{$mail}">
      {/render}
     </td>
    </tr>
   </table>
  </td>
</tr>
</table>

<input type="hidden" name="mailAccountTab" value="mailAccountTab">

<!-- Place cursor -->
<script language="JavaScript" type="text/javascript">

{literal}
focus_field('mail');
{/literal}
</script>
