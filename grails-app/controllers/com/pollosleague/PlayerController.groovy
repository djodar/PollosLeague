package com.pollosleague

class PlayerController {

	static defaultAction = "show"
	def playerService

	def show() {
		if(params.id != null){
//			render(contentType: "text/json") {
//				playerService.getPlayer(params.id)
//			}
			def player = playerService.getPlayer(params.id)
			request.model = player
		} else {
			render view: "show"
		}
	}
}
