require 'rake/testtask'

%w(lib test).each { |dir| $: << File.expand_path(dir, Dir.pwd) }

Rake::TestTask.new { |task| task.pattern = "test/**/*_test.rb" }
