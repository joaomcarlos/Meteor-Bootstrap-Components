if Meteor.isClient
  Template.bt_glyphicon.helpers
      name: ->
          return "bt_glyphicon"


  Template.bt_glyphicon.events
      # events: click, blur, keypress, keyup, keydown, etc
      'click div': (e) ->
          button = ["left","middle","right"][e.which-1]
          console.log "template: [bt_alerts] -> event : [click :#{button}] -> selector: [div]"
          
          # Run this code when div is clicked
          


