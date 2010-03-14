require "lib/sapo.rb"

gem_name = "sapo-rb"

Gem::Specification.new do |s|
  s.name = gem_name
  s.version = SAPO::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tiago Pinto"]
  s.email = %q{tpinto@webreakstuff.com}
  s.date = %q{2009-11-23}
  s.summary = %q{Ruby interface to SAPO APIs}
  s.description = %q{As seen on http://services.sapo.pt/}
  s.files = ["History.txt", "Rakefile", "README.rdoc", "lib/sapo.rb", "lib/sapo", "lib/sapo/adsl.rb", "lib/sapo/adwords.rb", "lib/sapo/auto.rb", "lib/sapo/blogs.rb", "lib/sapo/cacert.pem", "lib/sapo/id.rb", "lib/sapo/jobs.rb", "lib/sapo/photos.rb", "lib/sapo/shopping.rb", "lib/sapo/traffic.rb"]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/tpinto/sapo-rb}
  #s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = gem_name
  s.rubygems_version = SAPO::VERSION
end
