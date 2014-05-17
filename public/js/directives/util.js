define(['./module', '$', 'log'], function(module, $, log) {
  return module.directive('trigger', function() {
    return {
      restrict: 'E',
      compile: function(tElem, attrs) {
        log.debug('Finished loading the application');
        $(tElem).remove();
        $('overlay').fadeOut(500, function() {
          return $(this).remove();
        });
        return function() {};
      }
    };
  }).directive('onReady', function() {
    return {
      restrict: 'A',
      scope: {
        onReady: '&'
      },
      link: function(scope, element, attrs) {
        if (!scope.executed) {
          scope.onReady();
          scope.executed = true;
        }
      }
    };
  });
});
