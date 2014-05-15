define(() ->
    map =
        '/home':
            name: 'Home'
            icon: 'glyphicon glyphicon-home'
            main: true
            nav:
                '/dashboard':
                    name: 'Dashboard'
                    icon: 'glyphicon glyphicon-dashboard'
                    view: 'home/dashboard'
                    controller: 'Home.DashboardCtrl'
                    main: true
                '/notifications':
                    name: 'Notifications'
                    icon: 'glyphicon glyphicon-inbox'
                    view: 'home/notifications'
                    controller: 'Home.NotificationsCtrl'
        '/workbench':
            name: 'Workbench'
            icon: 'glyphicon glyphicon-wrench'
            nav:
                '/etl':
                    name: 'ETL Editor'
                    icon: 'glyphicon glyphicon-random'
                    view: 'workbench/etl'
                    controller: 'Workbench.ETLCtrl'
                    main: true
                '/metadata':
                    name: 'Metadata Editor'
                    icon: 'glyphicon glyphicon-book'
                    view: 'workbench/metadata'
                    controller: 'Workbench.MetadataCtrl'
        '/repositories':
            name: 'Repositories'
            icon: 'glyphicon glyphicon-tasks'
            nav:
                '/file':
                    name: 'File'
                    icon: 'glyphicon glyphicon-file'
                    view: 'repositories/file'
                    controller: 'Repositories.FileCtrl'
                    main: true
                '/reports':
                    name: 'Reports'
                    icon: 'glyphicon glyphicon-stats'
                    view: 'repositories/reports'
                    controller: 'Repositories.ReportsCtrl'
                '/emails':
                    name: 'Emails'
                    icon: 'glyphicon glyphicon-envelope'
                    view: 'repositories/emails'
                    controller: 'Reportories.EmailCtrl'
        '/jobs':
            name: 'Jobs'
            icon: 'glyphicon glyphicon-ok'
            nav:
                '/dashboard':
                    name: 'Dashboard'
                    icon: 'glyphicon glyphicon-dashboard'
                    view: 'jobs/dashboard'
                    controller: 'Jobs.DashboardCtrl'
                    main: true
                '/scheduling':
                    name: 'Scheduling'
                    icon: 'glyphicon glyphicon-calendar'
                    view: 'jobs/scheduling'
                    controller: 'Jobs.SchedulingCtrl'
                '/health':
                    name: 'Health'
                    icon: 'glyphicon glyphicon-heart'
                    view: 'jobs/HealthCtrl'
                    controller: 'Jobs.HealthCtrl'
                '/history':
                    name: 'History'
                    icon: 'glyphicon glyphicon-book'
                    view: 'jobs/HistoryCtrl'
                    controller: 'Jobs.HistoryCtrl'
        '/notifications':
            name: 'Notifications'
            icon: 'glyphicon glyphicon-inbox'
            nav:
                '/subscriptions':
                    name: 'Subscriptions'
                    icon: 'glyphicon glyphicon-dashboard'
                    view: 'notifications/subscriptions'
                    controller: 'Notifications.SubscriptionsCtrl'
                    main: true
                '/history':
                    name: 'History'
                    icon: 'glyphicon glyphicon-book'
                    view: 'notifications/history'
                    controller: 'Notifications.HistoryCtrl'
    return map
)
