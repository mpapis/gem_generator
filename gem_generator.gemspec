$:.push File.expand_path("../lib", __FILE__)
require "gem_generator/version"

Gem::Specification.new do |s|
  s.name        = 'gem_generator'
  s.version     = GemGenerator::VERSION
  s.summary     =
  s.description = 'Generate gems based on multiple options.'
  s.authors     = ['Michal Papis']
  s.email       = ['mpapis@gmail.com']
  s.homepage    = 'https://github.com/mpapis/gem_generator'
  s.files       = Dir['LICENSE', 'README.md', 'lib/**/*', 'bin/*']
  s.executables = ['gg']
  s.required_ruby_version = '>= 1.9.1'
  s.add_dependency("thor")
end
