require "rake/testtask"

task default: :test

Rake::TestTask.new do |t|
  t.test_files = FileList['test/chargen/test*.rb']
  t.warning = true
end
