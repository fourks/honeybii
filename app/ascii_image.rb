require 'rmagick'

class AsciiImage
  attr_accessor :raw

  def initialize(image_filename, point_size)
    @raw = Magick::ImageList.new(image_filename)[0]
    @point_size = point_size
  end
end
