<html>
    <head>
        <title>Pollos League</title>
        <meta name="layout" content="main" />
    </head>
    <body>
    	<h1>Alburnos</h1>
    	<table>
	    	<g:each var="player" in="${model}">
			<tr>
				<td>${player.first_name}</td>
			</tr>
			</g:each>
		</table>
    </body>
</html>
