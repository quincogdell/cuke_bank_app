require 'coveralls/rake/task'
Coveralls::RakeTask.new

desc "Run tests on Travis-CI"
# can change this based on test suites using
# main on is coveralls:push
task travis: [:spec, :cucumber, 'coveralls:push']
