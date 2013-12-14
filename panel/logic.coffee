Template.btPanel.helpers
	isTemplate: ->
		#this is brittle
		return value[0] is ">";
	panelType: ->
		return "panel-default"
