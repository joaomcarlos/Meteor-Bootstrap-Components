Template.bt_panel.helpers
	isTemplate: ->
		#this is brittle
		return value[0] is ">";
	panel_type: ->
		return "panel-default"
