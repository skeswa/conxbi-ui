define(['require', 'angular', './app', './routes'], function(require, ng) {
  return require(['domReady!'], function(doc) {
    return ng.bootstrap(doc, ['conxworks']);
  });
});
