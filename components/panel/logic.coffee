if Meteor.isClient
  Template.bt_panel.helpers
    template_name: (tname) ->
    	tname = tname.substring(1,tname.length-1)
    	console.log tname
    	return Template[tname]
