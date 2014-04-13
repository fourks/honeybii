Gem::Specification.new do |s|
  s.name = 'honeybii'
  s.version = '2.0.4'
  s.date = '2014-04-13'
  s.executables << 'honeybii'
  s.add_runtime_dependency 'rmagick', ['~> 2.13', '>= 2.13.2']
  s.files = ['lib/honeybii.rb', 'lib/honeybii/ascii_image.rb', 'lib/honeybii/shaded_ascii.rb']
  s.summary = 'An image-to-ascii converter'
  s.description = 'A command-line image-to-ascii conversion tool'
  s.authors = ['Jamey DeOrio']
  s.email = 'jamey@jameydeorio.com'
  s.homepage = 'http://honeybii.com'
  s.license = 'MIT'
end
