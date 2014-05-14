define(['./module'], (module) ->
    module.directive('navbar', () ->
        restrict: 'E'
        templateUrl: 'views/shell/navbar.html'
    ).directive('subnavbar', () ->
        restrict: 'E'
        templateUrl: 'views/shell/subnavbar.html'
    ).directive('header', () ->
        restrict: 'E'
        templateUrl: 'views/shell/header.html'
    )
)
