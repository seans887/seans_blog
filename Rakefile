task default: "assets:precompile"

namespace :assets do
  desc 'Precompile assets'
  task :precompile do
    Rake::Task["clean"].invoke
    sh "bundle exec jekyll"
  end
end

desc "Remove compiled files"
task :clean do
  sh "rm -rf #{File.dirname(__FILE__)}/_site/*"
end