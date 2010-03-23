begin
  require 'jeweler'
  require 'lib/sapo.rb'
  
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "sapo-rb"
    gemspec.summary = "Ruby interface to SAPO APIs"
    gemspec.description = "As seen on http://services.sapo.pt/"
    gemspec.email = "tpinto@webreakstuff.com"
    gemspec.homepage = "http://tpinto.github.com/sapo-rb/"
    gemspec.authors = ["Tiago Pinto"]
    gemspec.version = SAPO::VERSION
    
    gemspec.add_dependency 'curb'
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or other dependency) not available. Install it with: gem install jeweler"
end
