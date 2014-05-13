# Configure require with libs etc.
require.config
    paths:
        'angular': '../lib/angular/angular'
        '$': '../lib/jquery/dist/jquery.min'
        'bootstrap': '../lib/bootstrap/dist/js/bootstrap.min'
        'log': '../js/log'
        'angularRoute': '../lib/angular-route/angular-route.min'
        'domReady': '../lib/requirejs-domready/domReady'
    shim:
        'angular':
            'exports': 'angular'
        'angularRoute':
            'deps': ['angular']
        '$':
            'exports': 'jQuery'
        'bootstrap':
            'deps': ['jQuery']

    deps: ['./init']
