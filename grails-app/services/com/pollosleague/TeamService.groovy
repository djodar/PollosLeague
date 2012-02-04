package com.pollosleague

import grails.converters.*

import org.codehaus.groovy.grails.web.json.JSONObject

class TeamService {
	
	static transactional = false
	def playerService
	
	JSONObject getTeam(String id){
		return playerService.getPlayer(id)
	}

}
