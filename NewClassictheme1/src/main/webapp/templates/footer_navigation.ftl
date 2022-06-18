<ul class="flex-row nav" role="menubar">
	<#if !is_signed_in>
		<li class="nav-item" role="presentation">
			<a class="nav-link" data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">
				${sign_in_text}
			</a>
		</li>
	</#if>


<#if is_signed_in>
		<li class="nav-item" role="presentation">
			<a class="nav-link"  href="${sign_out_url}" id="sign-out" rel="nofollow">
				${sign_out_text}
			</a>
		</li>
	</#if>




	<#--
 <#foreach nav_item in nav_items>
		<li class="nav-item" role="presentation">
			<a class="nav-link" aria-labelledby="layout_${nav_item.getLayoutId()}" href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">
				${nav_item.getName()}
			</a>
		</li>
	</#foreach>

-->

		<li class="nav-item" role="presentation">
			<a class="nav-link"  href="" >HOME</a>
		</li>
<li class="nav-item" role="presentation">
			<a class="nav-link"  href="" >ABOUT</a>
		</li>
<li class="nav-item" role="presentation">
			<a class="nav-link" href="" >CONTACT</a>
		</li>
<li class="nav-item" role="presentation">
			<a class="nav-link"  href="" >FAQ</a>
		</li>
<li class="nav-item" role="presentation">
			<a class="nav-link"  href="" >PRIVACY  POLICY</a>
		</li>
	
</ul>