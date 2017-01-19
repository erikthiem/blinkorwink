var gulp = require('gulp');
var sass = require('gulp-sass');
var concat = require('gulp-concat');
var merge = require('merge-stream');
var minify = require('gulp-clean-css');

gulp.task('default',function() {
    gulp.watch('frontend/sass/**/*.scss', ['styles']);
});

gulp.task('styles', function() {
    
    var scssStream = gulp.src('frontend/sass/**/*.scss')
        .pipe(sass().on('error', sass.logError))
        .pipe(concat('/frontend/sass/scss-files.scss'));

    var cssStream = gulp.src('/frontend/sass/**/*.scss')
        .pipe(concat('frontend/css-files.css'));

    var mergedStream = merge(scssStream, cssStream)
        .pipe(concat('all.min.css'))
        .pipe(minify())
        .pipe(gulp.dest('./frontend/css/'));

    return mergedStream;
});
