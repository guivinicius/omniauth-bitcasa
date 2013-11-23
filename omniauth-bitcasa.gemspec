# coding: utf-8
require File.expand_path('../lib/omniauth-github/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors        = ["Guilherme Vinicius Moreira"]
  gem.email           = ["gui.vinicius@gmail.com"]
  gem.description   = %q{Unofficial OmniAuth strategy for Bitcasa.}
  gem.summary      = %q{Unofficial OmniAuth strategy for Bitcasa.}
  gem.homepage    = "https://github.com/guivinicius/omniauth-bitcasa"
  gem.license          = "MIT"

  gem.executables     = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files                 = `git ls-files`.split("\n")
  gem.test_files          = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths   = ["lib"]
  gem.name               = "omniauth-bitcasa"
  gem.version             = OmniAuth::Bitcasa::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
