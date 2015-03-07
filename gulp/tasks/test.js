var gulp = require('gulp');
var jest = require('jest-cli');
require('harmonize')();

var jestConfig = {
  rootDir: '.',
  scriptPreprocessor: '<rootDir>/preprocessor.js',
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
};

gulp.task('jest', function(done) {
  jest.runCLI({
    config: jestConfig
  }, 'src/js/**/__tests__', function() {
    done();
  });
});

gulp.task('test', ['jest'], function() {
  gulp.watch('src/js/**', ['jest']);
});
