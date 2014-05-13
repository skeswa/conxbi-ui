define(['app', 'angularRoute'], function(app) {
  return app.config([
    '$routeProvider', function(router) {
      return router.when('/', {
        templateUrl: '../views/home.html',
        controller: 'HomeCtrl'
      }).when('dashboard', {
        templateUrl: '../views/dashboard',
        controller: 'DashboardCtrl'
      }).otherwise({
        redirectTo: '/'
      });
    }
  ]);
});
