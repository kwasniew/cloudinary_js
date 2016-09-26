# Karma configuration
# Generated on Tue Jul 28 2015 09:31:57 GMT+0300 (IDT)

module.exports = (config) ->
  config.set

    # base path that will be used to resolve all patterns (eg. files, exclude)
#    basePath: '.'


    # frameworks to use
    # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['jasmine']


    # list of files / patterns to load in the browser
    files: [
      'bower_components/lodash/lodash.js'
      'src/utf8_encode.js'
      'src/crc32.js'
      'src/util/baseutil.js'
      'src/util/lodash.js'
      'src/layer/layer.js'
      'src/layer/textlayer.js'
      'src/layer/subtitleslayer.js'
      'src/parameters.js'
      'src/transformation.js'
      'src/condition.js'
      'src/configuration.js'
      'src/tags/htmltag.js'
      'src/tags/imagetag.js'
      'src/tags/videotag.js'
      'src/cloudinary.js'
      'src/namespace/cloudinary-core.js'
      'test/spec/spec-helper.js'
      'test/spec/cloudinary-spec.js'
      'test/spec/transformation-spec.js'
      'test/spec/tagspec.js'
      'test/spec/videourlspec.js'
      'test/spec/chaining-spec.js'
      'test/spec/layer-spec.js'
      'test/spec/responsive-core-spec.js'
      { pattern: 'test/docRoot/responsive-core-test.html', watched: false, included: false, served: true, nocache: false}
      { pattern: 'bower_components/bootstrap/dist/css/*', watched: false, included: false, served: true, nocache: false}
    ]
    coffeePreprocessor:
      options:
        sourceMap: true


# preprocess matching files before serving them to the browser
    # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors: {
      'src/**/*.js': ['coverage']
    }

    # test results reporter to use
    # possible values: 'dots', 'progress'
    # available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['story', 'coverage']


    # web server port
    port: 9876


    # enable / disable colors in the output (reporters and logs)
    colors: true


    # level of logging
    # possible values:
    # - config.LOG_DISABLE
    # - config.LOG_ERROR
    # - config.LOG_WARN
    # - config.LOG_INFO
    # - config.LOG_DEBUG
    logLevel: config.LOG_INFO


    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: false


    # start these browsers
    # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: ['Chrome' , 'Firefox', 'Safari']


    # Continuous Integration mode
    # if true, Karma captures browsers, runs the tests and exits
    singleRun: true
    plugins:[
      'karma-jasmine'
      'karma-coverage'
      'karma-story-reporter'
      'karma-chrome-launcher'
      'karma-phantomjs-launcher'
      'karma-firefox-launcher'
      'karma-safari-launcher'
    ]
