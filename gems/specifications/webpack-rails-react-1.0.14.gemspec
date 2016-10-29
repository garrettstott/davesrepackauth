# -*- encoding: utf-8 -*-
# stub: webpack-rails-react 1.0.14 ruby lib

Gem::Specification.new do |s|
  s.name = "webpack-rails-react"
  s.version = "1.0.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dave Jungst", "Jake Sorce"]
  s.date = "2016-10-07"
  s.description = "Production-tested, JavaScript-first tooling to use webpack within your Rails application"
  s.email = ["dave@cottonwoodcoding.com", "jake@cottonwoodcoding.com"]
  s.homepage = "https://github.com/cottonwoodcoding/webpack-rails-react"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Webpack / Rails / React"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.2.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.2.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.2.0"])
  end
end
