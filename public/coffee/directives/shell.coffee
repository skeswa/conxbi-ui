define(['./module'], (module) ->
    module.directive('header', () ->
        restrict: 'E'
        templateUrl: 'views/shell/header.html'
    )
)
