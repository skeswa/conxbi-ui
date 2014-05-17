define(['require', 'angular', './app', './routes'], (require, ng) ->
    require(['domReady!'], (doc) -> ng.bootstrap(doc, ['conxworks']))
)
