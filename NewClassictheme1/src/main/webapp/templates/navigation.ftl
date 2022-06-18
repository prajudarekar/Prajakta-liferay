
<nav class="${nav_collapse}">

<#if has_navigation && is_setup_complete>
	<div class="${nav_css_class} ${nav_css_right} site-navigation" id="navigation" role="navigation" style="background-color: #cef4fd;">
		<@liferay.navigation_menu default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	</div>
</#if>

</nav>

<#--
<nav class="navbar ${nav_collapse}  bg-gray-300 shadow shadow-gray-300 w-100  sm:px-auto md:px-auto" style="background-color: #c0f0fc;">
  <div class=" flex-row nav h-14">
    
    <div class="text-gray-400 order-3 w-full md:w-auto md:order-2" id="ncolor">
      <ul class="lg:flex font-semibold justify-between">
                
        <li class="md:px-2 md:py-2 text-blue-900 pr-4">
<#if has_navigation && is_setup_complete>
	<div class="${nav_css_class} ${nav_css_right} site-navigation" id="navigation" role="navigation"
 >
		<@liferay.navigation_menu default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	</div>
</#if>
</li>
</ul>
</div>
</div>
</nav>	
-->



	
