<html>
    <head>
        <title>Pollos League</title>
        <meta name="layout" content="main" />
		<r:require module="jquery"/>
    </head>
    <body>
		<table>
			<tr>
				<td><g:img uri="${model.photo_mobile_url}"/></td>
				<td width="100%">
					<div>${model.first_name} ${model.second_name}</div>
					<div>Total Points: ${model.total_points}</div>
				</td>
			</tr>
		</table>
    </body>
</html>
