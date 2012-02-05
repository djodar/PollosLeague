<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Pollos League</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>Welcome to Pollos League</h1>
			<p>Page under construction</p>
			<p>Analytics: ${GrailsUtil.getEnvironment() == 'production'}</p>
			<p>Environment: ${GrailsUtil.getEnvironment()}</p>
			<div id="controller-list" role="navigation">
				<h2>Handy links:</h2>
				<ul>
					<li class="controller">
						<g:link controller="league" params="[gameweek: '24']">
							Pollos League GW 24
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="team" params="[gameweek: 24, team: 2261351]">
							Fabio GW 24
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="team" params="[gameweek: 24, team: 2266824]">
							Jesus GW 24
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="team" params="[gameweek: 24, team: 206492]">
							Victor GW 24
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="team" params="[gameweek: 24, team: 379748]">
							Abel GW 24
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="team" params="[gameweek: 24, team: 190450]">
							Javi GW 24
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="team" params="[gameweek: 24, team: 2281707]">
							Oscar GW 24
						</g:link>
					</li>
					<li class="controller">
						<g:link controller="team" params="[gameweek: 24, team: 2279268]">
							Alexis GW 24
						</g:link>
					</li>
				</ul>
			</div>
		</div>
	</body>
</html>
