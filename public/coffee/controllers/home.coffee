define(['./module'], (module) ->
    module.controller('HomeCtrl', ['$scope', ($scope) ->
        $scope.hello = 'hello world'
    ])
)
