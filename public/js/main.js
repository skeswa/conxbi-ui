require.config({
  baseUrl: '/',
  paths: {
    'angular': 'lib/angular/angular',
    '$': 'lib/jquery/dist/jquery.min',
    'bootstrap': 'lib/bootstrap/dist/js/bootstrap.min',
    'angularBootstrap': 'lib/angular-bootstrap/ui-bootstrap.min',
    'log': 'js/log',
    'angularRoute': 'lib/angular-route/angular-route.min',
    'domReady': 'lib/requirejs-domready/domReady',
    'labjs': 'ulib/LABjs-2.0.3/LAB.min',
    'prototype': 'ulib/prototype-1.5.1/prototype-1.5.1',
    'extCore': 'ulib/ext-2.0.2/source/core/Ext',
    'extBase': 'ulib/ext-2.0.2/source/adapter/ext-base',
    'extAll': 'ulib/ext-2.0.2/ext-all-debug',
    'ext': 'ulib/ext-2.0.2/ext'
  },
  shim: {
    'angular': {
      'exports': 'angular'
    },
    'angularRoute': {
      'deps': ['angular']
    },
    'angularBootstrap': {
      'deps': ['angular']
    },
    '$': {
      'exports': 'jQuery'
    },
    'bootstrap': {
      'deps': ['$']
    },
    'extCore': {
      'exports': 'Ext'
    },
    'extBase': {
      'deps': ['extCore']
    },
    'extAll': {
      'deps': ['extCore']
    }
  },
  deps: ['js/init']
});
