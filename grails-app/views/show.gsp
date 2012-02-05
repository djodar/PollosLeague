<html>
    <head>
        <title>Pollos League</title>
        <meta name="layout" content="main" />
    </head>
    <body>
    	<div id="teamPanel">
    	<h1>Alburnos</h1>
    	<table>
    		<tr>
				<th>Player</th>
				<th>Fixture</th>
				<th>Transfers</th>
				<th>Points</th>
				<th>Events</th>
			</tr>
	    	<g:each var="player" in="${model}">
			<tr>
				<td>${player.first_name} ${player.second_name}</td>
				<td>${player.current_fixture}</td>
				<td>${player.transfers_in_event}</td>
				<td>${player.event_total}</td>
				<td>
					<g:each var="event" in="${player.event_explain}">
						${event[1]} ${event[0]}. 
					</g:each>
				</td>
			</tr>
			</g:each>
		</table>
		</div>
    </body>
</html>
