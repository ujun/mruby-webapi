MRuby::Gem::Specification.new('mruby-webapi') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Jun Uchino'

  spec.add_dependency 'mruby-rack-r3', github: 'rail44/mruby-rack-r3' 
end
