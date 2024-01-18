# -*- encoding: utf-8 -*-
# stub: haste 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "haste".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["trhacknon".freeze]
  s.date = "1980-01-01"
  s.description = "CLI Haste Client".freeze
  s.email = "open-source@toptal.com".freeze
  s.executables = ["haste".freeze]
  s.files = ["bin/haste".freeze]
  s.homepage = "https://github.com/tucommenceapousser/haste-cliento".freeze
  s.licenses = ["MIT License".freeze]
  s.rubygems_version = "3.3.20".freeze
  s.summary = "Haste Client".freeze

  s.installed_by_version = "3.3.20" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<json>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
  else
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
  end
end
