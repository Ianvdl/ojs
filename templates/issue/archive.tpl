{**
 * archive.tpl
 *
 * Copyright (c) 2003-2004 The Public Knowledge Project
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Issue Archive.
 *
 * $Id$
 *}

{assign var="pageTitleTranslated" value=$issueTitle} 
{assign var="pageCrumbTitleTranslated" value=$issueCrumbTitle}
{assign var="currentUrl" value="$pageUrl/issue/view/$issueId"}
{include file="common/header.tpl"}

{if !$showToc && $issue}
	<ul class="menu">
		<li><a href="{$requestPageUrl}/view/{$issueId}/showToc">{translate key="issue.toc"}</a></li>
	</ul>
	<br />
	<div><a href="{$requestPageUrl}/view/{$issueId}/showToc"><img src="{$coverPagePath}" width="" height="" border="0" alt="" /></a></div>
	<div>{$issue->getCoverPageDescription()}</div>
{else}
	{include file="issue/issue.tpl"}
{/if}

<br />

<div>
	<span>{translate key="archive.browse"}:&nbsp;<select name="issue" onchange="location.href='{$requestPageUrl}/view/'+this.options[this.selectedIndex].value" size="1" class="selectMenu">{html_options options=$issueOptions selected=$issueId}</select></span>
</div>

{include file="common/footer.tpl"}
