define(['./module', '$', 'log'], (module, $, log) ->
    module.directive('trigger', () ->
        restrict: 'E'
        compile: (tElem, attrs) ->
            log.debug 'Finished loading the application'
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
            if not scope.executed
                scope.onReady()
                scope.executed = true
            return
    )
)
