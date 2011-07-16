{include file="header.tpl" noleftindex=true}

<ul>
{section name=files loop=$files}
	<li><a href="#{$files[files].file}">{$files[files].file}</a></li>
{/section}
</ul>

{foreach key=file item=issues from=$all}
	<hr/>
	
	<a name="{$file}" id="{$file}"></a>
	<div>
		<h1>{$file}</h1>
		{if count($issues.warnings)}
			<h2>Warnings:</h2>
			{section name=warnings loop=$issues.warnings}
				<b>{$issues.warnings[warnings].name}</b> - {$issues.warnings[warnings].listing}<br>
			{/section}
		{/if}
		{if count($issues.errors)}
			<h2>Errors:</h2>
			{section name=errors loop=$issues.errors}
				<b>{$issues.errors[errors].name}</b> - {$issues.errors[errors].listing}<br>
			{/section}
		{/if}
		
	</div>
{/foreach}

{include file="footer.tpl"}
