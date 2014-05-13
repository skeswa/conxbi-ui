define(() ->
    # This generates a timestamp
    timestamp = () ->
        now = new Date()
        time = [ now.getHours(), now.getMinutes(), now.getSeconds(), now.getMilliseconds() ]
        time[0] = 12 if !time[0]
        return time.join ':'
    # This function formats statements
    print = (prefix, args) ->
        output = ['[' + timestamp() + '][' + prefix + ']\t' + args[0]]
        for key, value of args
            if key isnt '0'
                output.push value
        console.log.apply(this, output)
    # Define the module
    return {} =
        info: () -> print('info', arguments)
        debug: () -> print('debug', arguments)
        error: () -> print('error', arguments)
)

