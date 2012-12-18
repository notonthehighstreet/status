# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "update_status"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Douglas Roper"]
  s.date = "2012-12-18"
  s.description = "Updates pull requests on github, with latest build from Jenkins and QA status"
  s.email = "douglasroper@notonthehighstreet.com"
  s.executables = ["status"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/status",
    "lib/status.rb",
    "lib/status/base.rb",
    "lib/status/config.rb",
    "lib/status/github/pull_request.rb",
    "lib/status/github/statuses.rb",
    "lib/status/jenkins.rb",
    "lib/status/request.rb",
    "spec/spec_helper.rb",
    "spec/status/github/pull_request_spec.rb",
    "spec/status/github/statuses_spec.rb",
    "spec/status/jenkins_spec.rb",
    "status.gemspec",
    "update_status.gemspec"
  ]
  s.homepage = "http://github.com/dougdroper/status"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Status update for pull requests"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, [">= 1.0.3"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.6.2"])
      s.add_development_dependency(%q<rspec>, [">= 2.11.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 1.2.1"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<multi_json>, [">= 1.0.3"])
      s.add_dependency(%q<rest-client>, [">= 1.6.2"])
      s.add_dependency(%q<rspec>, [">= 2.11.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 1.2.1"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>, [">= 1.0.3"])
    s.add_dependency(%q<rest-client>, [">= 1.6.2"])
    s.add_dependency(%q<rspec>, [">= 2.11.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 1.2.1"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

