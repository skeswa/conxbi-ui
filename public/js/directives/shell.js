define(['./module'], function(module) {
  return module.directive('header', function() {
    return {
      restrict: 'E',
      templateUrl: 'views/shell/header.html'
    };
  });
});
