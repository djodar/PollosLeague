package com.pollosleague

import grails.converters.JSON

import org.codehaus.groovy.grails.web.json.JSONObject

class PlayerService {

	final URL = "http://fantasy.premierleague.com/web/api/elements/"
    
	JSONObject getPlayer(String id) {
		def url = new URL(URL + id)
		return JSON.parse(url.newReader())
    }
}
