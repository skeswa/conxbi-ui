define(['./module'], function(module) {
  return module.controller('HomeCtrl', [
    '$scope', function($scope) {
      return $scope.hello = 'hello world';
    }
  ]);
});
