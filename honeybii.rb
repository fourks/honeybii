#!/usr/bin/env ruby
require 'optparse'
require 'rmagick'

require_relative 'app/shaded_image'

options = {}
option_parser = OptionParser.new do |opts|
  opts.banner = 'Usage: honeybii.rb [options]'

  opts.on('-i', '--image FILENAME', 'Name of image file to convert (png|gif|jpg)') do |i|
    options[:image] = i
  end

  opts.on('-s', '--pixel-size PIXELS', Integer, 'Size of image chunks to process into ascii (smaller => more detail)') do |s|
    options[:pixel_size] = s
  end
end

option_parser.parse!

if options.empty?
  puts option_parser.help 
  exit
end

# required
unless options[:image] && /.*\.(png|gif|jpg)$/i =~ options[:image]
  raise ArgumentError, 'Please point to an image file (png|gif|jpg)'
end

# defaults
options[:pixel_size] = 12 unless options[:pixel_size]

puts ShadedImage.new(options[:image], options[:pixel_size])
