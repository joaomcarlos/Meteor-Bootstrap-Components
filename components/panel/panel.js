if(Meteor.isClient){
  Template.bt_panel.helpers({
    isTemplate: function (value) {
      //this is brittle
      return value[0] === ">";
    },
    panel_type: function () {
      return "panel-default";
    }
  });
}
