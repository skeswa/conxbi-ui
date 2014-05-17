define(['angular', 'angularRoute', 'angularBootstrap', './services/index', './controllers/index', './directives/index'], function(ng, router, ngBootstrap, services, controllers, directives) {
  return ng.module('conxworks', ['ngRoute', 'ui.bootstrap', 'conxworks.services', 'conxworks.controllers', 'conxworks.directives']);
});
