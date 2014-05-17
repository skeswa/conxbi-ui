define(['./module', 'ext', 'log'], (module, Ext, log) ->
    module.controller('Workbench.ETLCtrl', ['$scope', ($scope) ->
        data = [
            {
                task: "ColumnTree Example"
                duration: "3 hours"
                user: ""
                uiProvider: "col"
                cls: "master-task"
                iconCls: "task-folder"
                children: [
                    {
                        task: "Abstract rendering in TreeNodeUI"
                        duration: "15 min"
                        user: "Jack Slocum"
                        uiProvider: "col"
                        leaf: true
                        iconCls: "task"
                    }
                    {
                        task: "Create TreeNodeUI with column knowledge"
                        duration: "45 min"
                        user: "Jack Slocum"
                        uiProvider: "col"
                        leaf: true
                        iconCls: "task"
                    }
                    {
                        task: "Create TreePanel to render and lock headers"
                        duration: "30 min"
                        user: "Jack Slocum"
                        uiProvider: "col"
                        leaf: true
                        iconCls: "task"
                    }
                    {
                        task: "Add CSS to make it look fly"
                        duration: "30 min"
                        user: "Jack Slocum"
                        uiProvider: "col"
                        leaf: true
                        iconCls: "task"
                    }
                    {
                        task: "Test and make sure it works"
                        duration: "1 hour"
                        user: "Jack Slocum"
                        uiProvider: "col"
                        leaf: true
                        iconCls: "task"
                    }
                ]
            }
        ]
        
        $scope.test = () ->
            new Ext.tree.ColumnTree
                width: 200
                height: 300
                rootVisible: false
                autoScroll: true
                title: 'Example Tasks'
                animEl: 'test'
                columns: [
                    {
                        header: 'Task'
                        width: 100
                        dataIndex: 'task'
                    }
                    {
                        header: 'Duration'
                        width: 100
                        dataIndex: 200
                    }
                ]
                loader: new Ext.tree.TreeLoader
                    uiProviders:
                        col: Ext.tree.ColumnNodeUI
                root: new Ext.tree.AsyncTreeNode
                    text: 'Tasks'
                    children: data

            Ext.Msg.show
                title:'Save Changes?'
                msg: 'Your are closing a tab that has unsaved changes. Would you like to save your changes?'
                buttons: Ext.Msg.YESNOCANCEL
                animEl: 'test'
    ])
)
