if Meteor.isClient
	Template.bt_panel_accordion.events
		'click .accordion-clicker': (e) ->
			$(e.target).parent().find(".panel-collapse").collapse('toggle')
			
	Template.bt_panel_accordion.template_name = (tname) ->
    	tname = tname.substring(1,tname.length-1)
    	console.log tname
    	return Template[tname]

    Template.bt_panel.template_name = (tname) ->
    	tname = tname.substring(1,tname.length-1)
    	console.log tname
    	return Template[tname]
    #Template.bt_panel.clearAccordionFlag = ->
    	# attempt to make sub panels non accordion, fail!
    	#this.accordion = undefined
    	#fixed by doing a sub template bt_panel_accordion

