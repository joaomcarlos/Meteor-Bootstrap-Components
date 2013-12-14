if Meteor.isClient
  Handlebars.registerHelper "bt_isTemplate", (property) ->
    value[0] is ">"
