define(['app', 'angularRoute'], (app) ->
    return app.config(['$routeProvider', (router) ->
        router.when('/',
            templateUrl: '../views/home.html',
            controller: 'HomeCtrl'
        ).when('dashboard',
            templateUrl: '../views/dashboard',
            controller: 'DashboardCtrl'
        ).otherwise(redirectTo: '/')
    ])
)


