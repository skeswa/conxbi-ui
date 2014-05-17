define(function() {
  var print, timestamp;
  timestamp = function() {
    var now, time;
    now = new Date();
    time = [now.getHours(), now.getMinutes(), now.getSeconds(), now.getMilliseconds()];
    if (!time[0]) {
      time[0] = 12;
    }
    return time.join(':');
  };
  print = function(prefix, args) {
    var key, output, value;
    output = ['[' + timestamp() + '][' + prefix + ']\t' + args[0]];
    for (key in args) {
      value = args[key];
      if (key !== '0') {
        output.push(value);
      }
    }
    return console.log.apply(this, output);
  };
  return {
    info: function() {
      return print('info', arguments);
    },
    debug: function() {
      return print('debug', arguments);
    },
    error: function() {
      return print('error', arguments);
    }
  };
});
