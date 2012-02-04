package com.pollosleague

class TeamController {

	static defaultAction = "show"
    def teamService
	
	def show(){
		assert params.gameweek != null
		int gameweek = params.gameweek.toInteger()
		int alburnosCode = "499168".toInteger()
		log.info "Show team ${alburnosCode} for gameweek ${gameweek}"
		
		// cache these values as it's expensive to retrieve
		String[] playerIdList = teamService.getTeamIds(gameweek, alburnosCode)
		def playerList = teamService.getTeam(playerIdList)
		
		assert playerList != null
		request.model = playerList
		render view: "show"
	}
	
}
