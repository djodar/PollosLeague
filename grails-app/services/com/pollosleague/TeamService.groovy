package com.pollosleague

import org.codehaus.groovy.grails.web.json.JSONObject;

import grails.converters.*

class TeamService {

	static transactional = false
	def playerService

	/**
	 * Parses HTML to obtain players numbers
	 * @return List of player identifiers
	 */
	String[] getTeamIds(int gameweek, int teamId){
		final URL = "http://fantasy.premierleague.com/entry/${teamId}/event-history/${gameweek}"
		def playerIdentifiers = []
		def url = new URL(URL)
		def slurper = new XmlSlurper(new org.ccil.cowan.tagsoup.Parser());
		
		url.withReader { reader ->
			def parser = slurper.parse(reader);
			def rows = parser.body.div[1].div[1].div.div.div.section.div.div[2].div.table.tbody.tr
			assert 15 == rows.size()
			 
			rows.list().each { row ->
				String playerId = row['@id'].toString()[7..-1]
				playerIdentifiers.add(playerId)
			}
		}

		assert 15 == playerIdentifiers.size()
		return playerIdentifiers
	}
	
	/**
	 * 
	 * @param teamId Id of the team
	 * @return List of JSON objects representing each player
	 */
	JSONObject[] getTeam(String[] teamIdentifiers) {
		assert playerService != null
		
		def playersList = []
		
		for (id in teamIdentifiers) {
			playersList.add(playerService.getPlayer(id))
		}
		
		return playersList
	}

}
