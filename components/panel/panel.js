Template.bt_panel.helpers({

	isTemplate: function () {
		//this is brittle
		return value[0] === ">";
  },
	panel_type: function () {
		return "panel-default";
  }
});
