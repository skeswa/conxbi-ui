define(['./module', '../sitemap'], (module, sitemap) ->
    module.controller('NavCtrl', ['$scope', '$location', '$rootScope', ($scope, $location, $rootScope) ->
        $scope.categories = []  # List of all the categories
        $scope.routeMap = {}    # Maps routes to category-page pairs
        $scope.current =        # Keeps track of current route information
            category: undefined
            page: undefined
        # Populate categories and route map
        for categoryPath, category of sitemap
            $scope.categories.push category
            category.route = categoryPath
            for pagePath, page of category.nav
                if not category.pages? then category.pages = []
                route = categoryPath + pagePath
                $scope.routeMap[route] = category: category, page: page
                page.route = route
                category.pages.push page

        # Derive category and page from current route
        updateNav = () ->
            if _current = $scope.routeMap[$location.path()]
                $scope.current.category = _current.category
                $scope.current.page = _current.page
        updateNav()
        # Listen for page navigation events
        $rootScope.$on('$locationChangeSuccess', updateNav)
    ])
)
