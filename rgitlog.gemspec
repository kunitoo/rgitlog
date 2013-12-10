$:.push File.expand_path('../lib', __FILE__)

require 'rgitlog/version'

Gem::Specification.new do |s|
  s.name        = 'rgitlog'
  s.version     = Rgitlog::VERSION
  s.authors     = ['kunihiko ITO']
  s.email       = ['kuni.110.92@gmail.com']
  s.homepage    = 'https://github.com/kunitoo/rgitlog'
  s.summary     = 'git log on Rails'
  s.description = "A Rails engine for drawing your app's git log"
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.0.1'
  s.add_runtime_dependency 'gitlab-grit', '2.6.0'
end
