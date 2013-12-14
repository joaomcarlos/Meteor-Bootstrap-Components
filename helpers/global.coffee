if Meteor.isClient
  Handlebars.registerHelper "bt_isTemplate", (property) ->
    property[0] is ">"
  Handlebars.registerHelper "template_name", (name) ->
    name.slice(1)