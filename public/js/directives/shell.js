define(['./module'], function(module) {
  return module.directive('navbar', function() {
    return {
      restrict: 'E',
      templateUrl: 'views/shell/navbar.html'
    };
  }).directive('subnavbar', function() {
    return {
      restrict: 'E',
      templateUrl: 'views/shell/subnavbar.html'
    };
  }).directive('header', function() {
    return {
      restrict: 'E',
      templateUrl: 'views/shell/header.html'
    };
  });
});
