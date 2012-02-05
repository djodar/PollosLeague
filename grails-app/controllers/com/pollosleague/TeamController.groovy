package com.pollosleague

class TeamController {

	static defaultAction = "show"
    def teamService
	
	def show(){
		assert params.gameweek != null
		assert params.team != null
		int gameweek = params.gameweek.toInteger()
		int team = params.team.toInteger()
		log.info "Show team ${team} for gameweek ${gameweek}"
		
		def playerList = teamService.getTeam(getTeamIdList(gameweek, team))
		
		assert playerList != null
		request.model = playerList
		render view: "show"
	}

	/**
	 * Checks session for Ids otherwise it calls the service	
	 */
	private String[] getTeamIdList(int gameweek, int alburnosCode){
		String sessionAttr = "team${alburnosCode}Ids${gameweek}"
		def teamIdsList = session[sessionAttr]
		if(teamIdsList != null){
			log.info("Loading team Ids from session.");
			assert teamIdsList instanceof String[]
			return teamIdsList 
		} else {
			log.info("Calling team service and storing team ids object in session.");
			teamIdsList = teamService.getTeamIds(gameweek, alburnosCode)
			assert teamIdsList != null
			session[sessionAttr] = teamIdsList 
			return teamIdsList 
		}
	}
	
}
