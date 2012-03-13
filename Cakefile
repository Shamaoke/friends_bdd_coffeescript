exec = require('child_process')['exec']
fs   = require('fs')

task 'cucumber', 'run all features', (options) ->
  invoke 'cucumber:all'

task 'cucumber:all', 'run all features', (options) ->
  exec 'cucumber.js features/*.feature', (error, stdout, stderr) ->
    console.log stdout

task 'cucumber:wip', 'run wip features', (options) ->
  exec 'cucumber.js --tags @wip features/*.feature', (error, stdout, stderr) ->
    console.log stdout

task 'compile', 'compile coffee files to lib', (options) ->
  exec 'coffee --compile --join lib/example.js src/*.coffee', (error, stdout, stderr) ->

task 'clear', 'clear the lib directory', (options) ->
  fs.readdir 'lib', (error, files) ->
    fs.unlink "lib/#{file}" for file in files

task 'spec', 'run all specs', (options) ->
  exec 'mocha --colors --require should --reporter spec spec/*_spec.coffee', (error, stdout, stderr) ->
    console.log stdout, stderr
