begin
  require 'jeweler'
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
  exit 1
end

require 'sapo'

Jeweler::Tasks.new do |gemspec|
  gemspec.version = SAPO::VERSION
  gemspec.name = "sapo-rb"
  gemspec.summary = "Ruby interface to SAPO APIs"
  gemspec.description = "As seen on http://services.sapo.pt/"
  gemspec.email = "tpinto@webreakstuff.com"
  gemspec.homepage = "http://tpinto.github.com/sapo-rb/"
  gemspec.authors = ["Tiago Pinto"]
end

Jeweler::GemcutterTasks.new
