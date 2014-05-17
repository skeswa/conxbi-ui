define(['./module'], (module) ->
    module.controller('Home.DashboardCtrl', ['$scope', ($scope) ->
        $scope.hello = 'hello world'
    ])
)
