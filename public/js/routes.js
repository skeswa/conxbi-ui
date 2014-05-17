define(['./app', 'angularRoute', './sitemap', 'log'], function(app, ngRoute, sitemap, log) {
  return app.config([
    '$routeProvider', function(router) {
      var category, categoryKey, navItem, navItemKey, route, _results;
      _results = [];
      for (categoryKey in sitemap) {
        category = sitemap[categoryKey];
        _results.push((function() {
          var _ref, _results1;
          _ref = category.nav;
          _results1 = [];
          for (navItemKey in _ref) {
            navItem = _ref[navItemKey];
            route = categoryKey + navItemKey;
            log.debug('Registering route \'' + route + '\' to angular context');
            router.when(route, {
              templateUrl: '../views/' + navItem.view + '.html',
              controller: navItem.controller
            });
            if (navItem.main) {
              router.when(categoryKey, {
                redirectTo: route
              });
              if (category.main) {
                _results1.push(router.otherwise({
                  redirectTo: route
                }));
              } else {
                _results1.push(void 0);
              }
            } else {
              _results1.push(void 0);
            }
          }
          return _results1;
        })());
      }
      return _results;
    }
  ]);
});
