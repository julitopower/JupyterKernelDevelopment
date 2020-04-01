var plugin = require('./index');
var base = require('@jupyter-widgets/base');

module.exports = {
  id: 'test_widget',
  requires: [base.IJupyterWidgetRegistry],
  activate: function(app, widgets) {
      widgets.registerWidget({
          name: 'test_widget',
          version: plugin.version,
          exports: plugin
      });
  },
  autoStart: true
};

