
class ReplaceTagLib {

	/**
	 * @attr value REQUIRED String to replace
	 */
	def replace = { attrs, body ->
		String optString = attrs.value.replaceFirst("Minutes played", "Min")
		optString = optString.replaceFirst("Goals conceded", "GC")
		optString = optString.replaceFirst("Goals scored", "Goals")
		out << body() << optString
	}
}
