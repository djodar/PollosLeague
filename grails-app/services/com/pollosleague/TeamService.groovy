package com.pollosleague

import grails.converters.*

import org.codehaus.groovy.grails.web.json.JSONObject

class TeamService {
	
	def playerService
	
	JSONObject getTeam(String id){
		return playerService.getPlayer(id)
	}

}
