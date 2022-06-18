<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

		<title>${the_title} - ${company_name}</title>

		<meta content="initial-scale=1.0, width=device-width" name="viewport" />

		<@liferay_util["include"] page=top_head_include />
	</head>

	<body class="${css_class}">
		<@liferay_ui["quick-access"] contentId="#main-content" />

		<@liferay_util["include"] page=body_top_include />

		<@liferay.control_menu />



		<div class="mb-0 pt-0" id="wrapper">
			<#-- Insert snippet 01-portal-normal-header here -->
<#if show_header>

  <#include "${full_templates_path}/top_header_icon.ftl" />
  <#include "${full_templates_path}/header.ftl" />
</#if>

<#-- Marququee tag -->


<div class="h-14" style="background-color: #cef4fd;">
    <div class="max-w-7xl mx-auto py-3 px-3 sm:px-6 lg:px-8">
      <div class="flex items-center justify-between flex-wrap">
        <div class="w-0 flex-1 flex">
          
          <marquee class="for-marquee" behavior="alternate" direction="left" scrollamount="12">
            <p class="for-marquee-text uppercase text-lg">
            
		"Azadi Ka Amrit Mahotsav"
	
            </p>
            
            
            
          </marquee>
        </div>
        
      </div>
    </div>
  </div>

<#--

  <nav class="navbar ${nav_collapse}" >
<#if has_navigation && is_setup_complete>
<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
<#include full_templates_path + "/navigation.ftl">
</div>
</#if>
</nav>
-->
 

<#if has_navigation && is_setup_complete>
<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
<#include full_templates_path + "/navigation.ftl">
</div>
</#if>


<#--

<nav class="  bg-gray-300 shadow shadow-gray-300 w-100  sm:px-auto md:px-auto" style="background-color: #c0f0fc;">
  <div class=" h-16 mx-auto md:px-4 container flex flex-wrap md:flex-nowrap">
    
    <div class="text-gray-400 order-3 w-full md:w-auto md:order-2">
      <ul class="lg:flex font-semibold justify-between">
                
        <li class="md:px-4 md:py-2 text-blue-900">
<#if has_navigation && is_setup_complete>
	<div class="${nav_css_class} ${nav_css_right} site-navigation" id="navigation1" role="navigation"
class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-blue-700 md:p-0 font-medium flex items-left justify-between w-full md:w-auto"
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
	

<#-- marqueetag end -->


			<#-- Insert snippet 02-portal-normal-main here -->
			<main id="content" role="main">
				<h1 class="hide-accessible">${the_title}</h1>

				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</main>

<#if show_footer>
     <#include "${full_templates_path}/footer.ftl" />
</#if>
		</div>

		<@liferay_util["include"] page=body_bottom_include />

		<@liferay_util["include"] page=bottom_include />
	</body>
</html>