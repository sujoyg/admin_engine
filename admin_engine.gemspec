$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'admin_engine/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'admin_engine'
  s.version     = AdminEngine::VERSION
  s.authors     = ['Sujoy Gupta']
  s.email       = ['sujoyg@gmail.com']
  s.homepage    = 'http://www.github.com/sujoyg/admin_engine'
  s.description = 'A rails engine for adding admin functionality.'
  s.summary     = 'A rails engine for adding admin functionality.'
  s.license     = 'MIT'
  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'haml', '~> 4.0'
  s.add_dependency 'rails', '~> 4.1'
  s.add_dependency 'user_authentication', '>= 1.0', '< 3.0'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'factory_girl_rails', '~> 4.0'
  s.add_development_dependency 'rspec-rails', '~> 3.1'
  s.add_development_dependency 'specstar-controllers', '~> 0.1'
  s.add_development_dependency 'specstar-models', '~> 0.2'
  s.add_development_dependency 'specstar-support-random', '~> 0.1'
  s.add_development_dependency 'sqlite3'
end
