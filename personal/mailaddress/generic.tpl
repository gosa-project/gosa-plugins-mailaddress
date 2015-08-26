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
    <td colspan="2"><i>{t}Please specify a mail address pattern (e.g., &#123;%uid&#124;@your-domain.com). Valid placeholders are: &#123;%uid&#124;, &#123;%givenName&#124; and &#123;%sn&#124;. For no action on the users' mail addresses, please leave empty.{/t}</i>
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
