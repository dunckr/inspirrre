var gulp = require('gulp');

gulp.task('copy', function() {
  gulp.src('src/fonts/**')
    .pipe(gulp.dest('build/fonts'));
});
