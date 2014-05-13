define(['./module', 'log'], (module, log) ->
    module.service('PluginSvc', () ->
        this.register = (name, plugin) ->
            log.info 'Plugin + \'' + name + '\' registered'
    )
)
