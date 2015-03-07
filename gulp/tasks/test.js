var gulp = require('gulp');
var jest = require('gulp-jest');

gulp.task('test', function() {
  return gulp.src('src/js').pipe(jest({
    scriptPreprocessor: '../../preprocessor.js',
    unmockedModulePathPatterns: [
      'node_modules/react'
    ],
    testDirectoryName: 'tests',
    testPathIgnorePatterns: [
      'node_modules'
    ],
    moduleFileExtensions: [
      'jsx',
      'js',
      'cjsx',
      'coffee'
    ],
    testFileExtensions: [
      'spec.jsx',
      'spec.js',
      'spec.cjsx',
      'spec.coffee'
    ]
  }));
});
