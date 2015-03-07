var gulp = require('gulp');
var jest = require('gulp-jest');

gulp.task('test', ['jest'], function(callback) {
  gulp.watch('src/js', ['jest']);
});

gulp.task('jest', function() {
  return gulp.src('src/js/**/__tests__').pipe(jest({
    scriptPreprocessor: '../../../preprocessor.js',
    unmockedModulePathPatterns: [
      '<rootDir>/node_modules/react'
    ],
    testPathIgnorePatterns: [
      '/node_modules',
      '<rootDir>/node_modules/'
    ],
    moduleFileExtensions: [
      'jsx',
      'js',
      'cjsx',
      'coffee'
    ],
    testFileExtensions: [
      'coffee',
      'js'
    ]
  }));
});
