<html>
  <head>
    <title>View League</title>
    <meta name="layout" content="main" />
  </head>
  <body>
  <g:each var="team" in="${model}">
    <g:render template="/team/team" model="[model: team[1], teamName: team[0]]"></g:render>
  </g:each>
</body>
</html>
