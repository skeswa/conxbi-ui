define(['./module', 'log'], function(module, log) {
  return module.service('PluginSvc', function() {
    return this.register = function(name, plugin) {
      return log.info('Plugin + \'' + name + '\' registered');
    };
  });
});
