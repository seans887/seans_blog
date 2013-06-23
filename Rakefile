task default: "assets:precompile"

namespace :assets do
  desc 'Precompile assets'
  task :precompile do
    Rake::Task["clean"].invoke
    Rake::Task["build"].invoke
  end
end

desc "Remove compiled files"
task :clean do
  sh "rm -rf #{File.dirname(__FILE__)}/_site/*"
end

desc "Parse haml layouts"
task :parse_haml do
  print "Parsing Haml layouts..."
  system(%{
    cd _layouts/haml && 
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  puts "done."
end

desc "Launch preview environment"
task :preview do
  Rake::Task["clean"].invoke
  Rake::Task["parse_haml"].invoke
  sh "jekyll serve --watch"
end

desc "Build site"
task :build do |task, args|
  Rake::Task["parse_haml"].invoke
  sh "bundle exec jekyll build"
end