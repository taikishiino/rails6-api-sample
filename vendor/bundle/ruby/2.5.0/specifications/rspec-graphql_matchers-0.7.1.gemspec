# -*- encoding: utf-8 -*-
# stub: rspec-graphql_matchers 0.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-graphql_matchers".freeze
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samuel Brand\u00E3o".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-07-27"
  s.email = ["gb.samuel@gmail.com".freeze]
  s.homepage = "https://github.com/khamusa/rspec-graphql_matchers".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Collection of rspec matchers to test your graphQL api schema.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<graphql>.freeze, ["< 2", ">= 0.9"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0"])
    else
      s.add_dependency(%q<graphql>.freeze, ["< 2", ">= 0.9"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<pry>.freeze, ["~> 0"])
    end
  else
    s.add_dependency(%q<graphql>.freeze, ["< 2", ">= 0.9"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0"])
  end
end
