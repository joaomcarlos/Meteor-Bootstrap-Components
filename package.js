Package.describe({
  summary: "Provides bootstrap 3 UI components for the new Meteor UI."
});

Package.on_use(function (api) {
  api.use(['jquery', 'bootstrap-3', 'templating'], 'client');

  var path = Npm.require('path');
  var component_path = path.join('components');
  var components = ["panel"];

  api.add_files(path.join('helpers', 'global.coffee'), 'client');

  for(var i=0; i < components.length; i++){
    api.add_files(path.join(component_path, components[i], 'interface.html'), 'client');
    api.add_files(path.join(component_path, components[i], 'example.html'), 'client');
    api.add_files(path.join(component_path, components[i], 'logic.coffee'), 'client');
  }

  api.add_files(path.join('helpers', 'tester.html'), 'client');
  api.add_files('demo.html', 'client');

});
