package com.pollosleague

class TeamController {

	static defaultAction = "show"
	
    def teamService
	
	def show(){
		def team = teamService.getTeam(params.id)
		request.model = team
		render view: "show"
	}
	
}
