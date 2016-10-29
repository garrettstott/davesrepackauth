# -*- encoding: utf-8 -*-
# stub: capistrano3-nginx 2.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano3-nginx"
  s.version = "2.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Juan Ignacio Donoso"]
  s.date = "2016-06-17"
  s.description = "Adds suuport to nginx for Capistrano 3.x"
  s.email = ["jidonoso@gmail.com"]
  s.homepage = "https://github.com/platanus/capistrano3-nginx"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Adds suuport to nginx for Capistrano 3.x"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 3.0.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, [">= 3.0.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 3.0.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
