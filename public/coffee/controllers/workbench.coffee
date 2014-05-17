define(['./module', 'ext', 'log'], (module, Ext, log) ->
    module.controller('Workbench.ETLCtrl', ['$scope', ($scope) ->
        $scope.test = () ->
            Ext.Msg.show
                title:'Save Changes?'
                msg: 'Your are closing a tab that has unsaved changes. Would you like to save your changes?'
                buttons: Ext.Msg.YESNOCANCEL
                fn: () -> alert 'HI'
                animEl: 'test'
    ])
)
