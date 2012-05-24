require 'rake'

desc 'Default: Run all the specs!'
task :default => :all_specs

desc 'Run all the specs!'
task :all_specs do
  sh 'bundle install'
  sh 'bundle exec rspec spec/helpers'
  
  Dir['spec/rails*/Rakefile'].each do |rakefile|
    directory_name = File.dirname rakefile
    sh <<-CMD
      cd #{directory_name}
      bundle install
      bundle exec rake
    CMD
  end
end
