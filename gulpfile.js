var gulp = require('gulp');
var less = require('gulp-less');
var path = require('path');
var coffee = require('gulp-coffee');
var gutil = require('gulp-util');

gulp.task('less', function () {
    gulp.src('./public/less/**/*.less').pipe(less({
        paths: [ path.join(__dirname, 'public', 'less', 'includes') ]
    })).pipe(gulp.dest('./public/css'));
});

gulp.task('coffee', function () {
    gulp.src('./public/coffee/**/*.coffee').pipe(coffee({bare: true})).on('error', gutil.log)
    .pipe(gulp.dest('./public/js'));
});

gulp.task('lint', function (cb) {
    var linter = require('child_process').spawn('coffeelint', ['public/coffee', '-f', 'coffeelint.json'], {stdio: "inherit"});
    var inputHandler = function(data) {
        process.stdin.write(data);
    };
    if (linter.stdout && linter.stdout.on) linter.stdout.on('data', inputHandler);
    if (linter.stderr && linter.stderr.on) linter.stderr.on('data', inputHandler);

    linter.on('close', function(code) {
        cb(code === 0 ? undefined : code);
    });
});

var paths = {
    scripts: ['./public/coffee/**/*.*'],
    styles: ['./public/less/**/*.*']
};

gulp.task('watch', ['less', 'coffee'], function () {
    gulp.watch(paths.scripts, ['lint', 'coffee']);
    gulp.watch(paths.styles, ['less']); 
});

gulp.task('default', ['less', 'lint', 'coffee']);
