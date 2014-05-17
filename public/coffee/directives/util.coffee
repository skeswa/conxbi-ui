define(['./module', '$', 'log'], (module, $, log) ->
    module.directive('shim', () ->
        restrict: 'E'
        compile: (tElem, attrs) ->
            log.debug 'Finished loading the application - killing the overlay'
            $(tElem).remove()
            $('overlay').fadeOut(500, () ->
                $(this).remove()
            )
            return ->
    ).directive('onReady', () ->
        restrict: 'A'
        scope:
            onReady: '&'
        link: (scope, element, attrs) ->
            log.debug 'onReady was fired'
            if not scope.executed
                scope.onReady()
                scope.executed = true
            return
    )
)
