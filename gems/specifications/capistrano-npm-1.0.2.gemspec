# -*- encoding: utf-8 -*-
# stub: capistrano-npm 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-npm"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Scott Walkinshaw"]
  s.date = "2016-02-29"
  s.description = "npm support for Capistrano 3.x"
  s.email = ["scott.walkinshaw@gmail.com"]
  s.homepage = "https://github.com/capistrano/npm"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "npm support for Capistrano 3.x"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 3.0.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, [">= 3.0.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 3.0.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
