define(['angular', 'angularRoute', 'services/index', 'controllers/index', 'directives/index'], function(ng, router, services, controllers, directives) {
  return ng.module('conxworks', ['ngRoute', 'conxworks.services', 'conxworks.controllers', 'conxworks.directives']);
});
