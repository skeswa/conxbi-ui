define(['./module', '$', 'log'], (module, $, log) ->
    module.directive('shim', () ->
        restrict: 'E'
        templateUrl: 'views/shell/navbar.html'
        compile: (tElem, attrs) ->
            log.debug 'Finished loading the application - killing the overlay'
            $(tElem).remove()
            $('overlay').fadeOut(500, () ->
                $(this).remove()
            )
            return ->
    )
)
