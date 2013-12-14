
Template.bt_panel.helpers({
  isTemplate: function() {
    return value[0] === ">";
  },
  panel_type: function() {
    return "panel-default";
  }
});
