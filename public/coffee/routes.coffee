define(['./app', 'angularRoute', './sitemap', 'log'], (app, ngRoute, sitemap, log) ->
    return app.config(['$routeProvider', (router) ->
        # Iterate through the sitemap
        for categoryKey, category of sitemap
            for navItemKey, navItem of category.nav
                route = categoryKey + navItemKey
                log.debug 'Registering route \'' + route + '\' to angular context'
                router.when(route,
                    templateUrl: '../views/' + navItem.view + '.html'
                    controller: navItem.controller
                )
                # Establish the default view
                if navItem.main
                    router.when(categoryKey, redirectTo: route)
                    if category.main then router.otherwise redirectTo: route
    ])
)


