if Meteor.isClient
  Template.bt_panel.helpers
    class: ->
      # this doesn't work for some reason, 
      "default"
