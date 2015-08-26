<table summary="{t}Mail Address Settings{/t}" style='width:100%;'>
 <tr>
  <td style='width:50%; '>  

   {if !$multiple_support}
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
   {else}
   <h3>{t}User Mail Addresses{/t}</h3>
   <table summary="{t}Mail addresses{/t}">
    <tr>
    <td colspan="2">{t}You are about to replace the below mail addresses for the selected users{/t}
      <ul>
      {foreach from=$multi_mail item=this_mail}
       <li><b>{$this_mail}</b></li>
      {/foreach}
      </ul>
    </td>
    </tr>
    <tr>
    <td colspan="2"><i>{t}Please specify a mail address pattern (e.g., {ldelim}%uid{rdelim}@your-domain.com). Valid placeholders are: {ldelim}%uid{rdelim}, {ldelim}%givenName{rdelim} and {ldelim}%sn{rdelim}.{/t}</i>
    </td>
    </tr>
    <tr><td>&nbsp;</td></tr>
    <tr>
     <td><label for="mail">{t}Mail address pattern{/t}</label>{$must}</td>
     <td>
      {render acl=$mailACL}
      <input type='text' id="mail" name="mail" size=35 maxlength=65 value="{$mail}">
      {/render}
     </td>
    </tr>
   </table>
   {/if}
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
