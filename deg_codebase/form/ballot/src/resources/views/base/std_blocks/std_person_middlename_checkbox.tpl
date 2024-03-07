{extends file="$base_template_path/std_blocks/std_person.tpl"}
{if $mosDesign}
    {include file="$base_template_path/std_mos/std_person_middlename_checkbox.tpl"}
{else}
{block name="middlename_block"}
	{include file="$base_template_path/std_blocks/std_checkbox.tpl" autocomplete_from=false required=false container_class="visual_controller middlename_checkbox {$container_class}" id="{$person}.{$prefix}middlename_checkbox{$postfix}" label='Нет отчества' name="field[{if isset($middlename_checkbox_name)&&$middlename_checkbox_name}{$middlename_checkbox_name}{else}internal.{$person_new}{$prefix}middlename_checkbox{/if}{$postfix}]" value="1"}
	{include file="$base_template_path/std_blocks/std_text.tpl"  validator="fio" label="Отчество" required=true  class="{$middlename_class}" name="field[{$person_new}{$prefix}middlename{$postfix}]" hint="{if isset($middlename_hint)&&$middlename_hint}{$middlename_hint}{else}false{/if}" container_class="middlename visual visual_0 {$container_class}" id="{$person}-middlename{$postfix}" maxlength="{if $maxlength_middlename}{$maxlength_middlename}{else}50{/if}"  autocomplete_from="{if $autocomplete}{if $child}CHILDREN:PATRONYMIC{else}{if $complex}COMPLEX_OMS:PATRONYMIC{else}FIO:PATRONYMIC{/if}{/if}{/if}"}
{/block}
{/if}