define(['./module', '../sitemap'], function(module, sitemap) {
  return module.controller('NavCtrl', [
    '$scope', '$location', '$rootScope', function($scope, $location, $rootScope) {
      var category, categoryPath, page, pagePath, route, updateNav, _ref;
      $scope.categories = [];
      $scope.routeMap = {};
      $scope.current = {
        category: void 0,
        page: void 0
      };
      for (categoryPath in sitemap) {
        category = sitemap[categoryPath];
        $scope.categories.push(category);
        category.route = categoryPath;
        _ref = category.nav;
        for (pagePath in _ref) {
          page = _ref[pagePath];
          if (category.pages == null) {
            category.pages = [];
          }
          route = categoryPath + pagePath;
          $scope.routeMap[route] = {
            category: category,
            page: page
          };
          page.route = route;
          category.pages.push(page);
        }
      }
      updateNav = function() {
        var _current;
        if (_current = $scope.routeMap[$location.path()]) {
          $scope.current.category = _current.category;
          return $scope.current.page = _current.page;
        }
      };
      updateNav();
      return $rootScope.$on('$locationChangeSuccess', updateNav);
    }
  ]);
});
