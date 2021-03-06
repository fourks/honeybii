require_relative '_test_helper'

class TestShadedAscii < MiniTest::Test
  def setup
    @image = ShadedAscii.new('test/images/flower_bee.jpg')
  end

  def test_image_can_be_grayscaled
    assert @image.raw.gray?, 'image was not converted to grayscale'
  end

  def test_image_can_be_pixelated
    # test image is 640 x 480, so pixelating at default 12px pointsize should
    # return image 53 x 20 pixels
    assert_equal [53, 20], [@image.raw.columns, @image.raw.rows]
  end

  def test_image_can_be_converted_to_ascii
    refute @image.ascii.empty?
  end

  def test_image_can_be_converted_to_ascii_with_different_detail_level
    # test image is 640 x 480, so pixelating at 14px pointsize should
    # return image 45 x 17 pixels
    image = ShadedAscii.new('test/images/flower_bee.jpg', 14)
    assert_equal [45, 17], [image.raw.columns, image.raw.rows]
    refute image.ascii.empty?
  end

  def test_image_can_use_different_gradients
    image_first_gradient = ShadedAscii.new('test/images/flower_bee.jpg', gradient: 0)
    image_last_gradient = ShadedAscii.new('test/images/flower_bee.jpg', gradient: ShadedAscii.gradients.length - 1)
    refute_equal image_first_gradient.to_s, image_last_gradient.to_s
  end

  def test_intensity_range_creates_different_ascii
    shaded_relative = ShadedAscii.new('test/images/flower_bee.jpg', 14)
    shaded_one_to_one = ShadedAscii.new('test/images/flower_bee.jpg', 14, style: 'one_to_one')
    refute_equal shaded_one_to_one.ascii, shaded_relative.ascii
  end
end
