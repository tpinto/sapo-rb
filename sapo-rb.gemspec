# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sapo-rb}
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tiago Pinto"]
  s.date = %q{2010-03-23}
  s.description = %q{As seen on http://services.sapo.pt/}
  s.email = %q{tpinto@webreakstuff.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "lib/.gitignore",
     "lib/sapo.rb",
     "lib/sapo/adsl.rb",
     "lib/sapo/adwords.rb",
     "lib/sapo/auto.rb",
     "lib/sapo/blogs.rb",
     "lib/sapo/cacert.pem",
     "lib/sapo/connector.rb",
     "lib/sapo/id.rb",
     "lib/sapo/jobs.rb",
     "lib/sapo/photos.rb",
     "lib/sapo/shopping.rb",
     "lib/sapo/sts.rb",
     "lib/sapo/traffic.rb",
     "lib/sapo/videos.rb",
     "sapo-rb.gemspec",
     "test/test_sapo.rb"
  ]
  s.homepage = %q{http://tpinto.github.com/sapo-rb/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{sapo-rb}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ruby interface to SAPO APIs}
  s.test_files = [
    "test/test_sapo.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<curb>, [">= 0"])
    else
      s.add_dependency(%q<curb>, [">= 0"])
    end
  else
    s.add_dependency(%q<curb>, [">= 0"])
  end
end

