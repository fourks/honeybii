SHADES = ['@', '%', '8', '#', '$', 'V', 'Y', 'x', '*', '=', '+', ':', '~', '-', '.', ' ']

class ShadedAscii < AsciiImage
  def initialize(image_filename, point_size = 12)
    super image_filename, point_size
    to_ascii!
  end

  def grayscale!
    @raw = @raw.quantize(256, Magick::GRAYColorspace)
  end

  def pixelate!
    columns = @raw.columns / @point_size
    rows = @raw.rows / (@point_size * 2)
    @raw.resize!(columns, rows)
  end

  def to_ascii!
    grayscale!
    pixelate!

    ascii_array = Array.new(@raw.rows).collect do |row|
      Array.new(@raw.columns)
    end
    
    @raw.each_pixel do |pixel, col, row|
      index = (((SHADES.size - 1) * pixel.intensity).to_f / 65535.to_f).round
      ascii_array[row][col] = SHADES[index]
    end

    @ascii = ascii_array.map { |row| row.join }.join("\n")
  end
end
