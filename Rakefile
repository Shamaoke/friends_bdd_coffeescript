# encoding: utf-8

require 'fileutils'

desc 'run all features'
task :cucumber => [:cucumber:all]

namespace :cucumber do
  desc 'Run all features'
  task :all do
    system 'cucumber.js features/*.feature'
  end

  desc 'Run wip features'
  task :wip do
    system 'cucumber.js --tags @wip features/*.feature'
  end
end

desc 'clear lib directory'
task :clear do
  FileUtils.rm_r Dir['lib/*']
end

desc 'compile coffee files to lib'
task :compile do
  system 'coffee --compile --join lib/main.js src/*.coffee'
end

desc 'run mocha specs'
task :spec do
  system 'mocha --colors --require should --reporter spec spec/*_spec.coffee'
end
