package com.pollosleague

/**
 * Retrieves data for each team of the league
 */
class LeagueController {

	static defaultAction = "show"
	def final staticTeamsId = [["Fabio", 2261351],
		["Jesus", 2266824],
		["Dani", 499168],
		["Victor", 206492],
		["Abel", 379748],
		["Javi", 190450],
		["Oscar", 2281707],
		["Alexis", 2279268],]

		def teamService
	
    def show() {
		assert params.gameweek != null
		int gameweek = params.gameweek.toInteger()

		def leagueObjects = []
		def leagueIdList = getLeagueIdList(gameweek)
		
		for(team in leagueIdList){
			leagueObjects.add([team[0], teamService.getTeam(team[1])])
		}
		request.model = leagueObjects
		render view: "show"
	}

		def getLeagueIdList(int gameweek){
		
		String sessionAttr = "leagueIds${gameweek}"
		def leagueIdsList = session[sessionAttr]
		if(leagueIdsList != null){
			log.info("Loading league Ids from session.");
			return leagueIdsList 
		} else {
			log.info("Calling team service and storing league ids object in session.");
			leagueIdsList = []
			for(id in staticTeamsId){
				def teamId = teamService.getTeamIds(gameweek, id[1])
				assert teamId != null
				leagueIdsList.add([id[0], teamId])
			}
			session[sessionAttr] = leagueIdsList 
			return leagueIdsList 
		}
	}
}
