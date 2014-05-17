define(['./module'], function(module) {
  return module.controller('Home.DashboardCtrl', [
    '$scope', function($scope) {
      return $scope.hello = 'hello world';
    }
  ]);
});
