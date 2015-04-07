require_relative "../rubyart"
require "test/unit"
require "digest"

class TestSimpleNumber < Test::Unit::TestCase
     
    def test_single_image_render
        art = RubyArt.new

        art.render_img(0, "got-image.png")

        assert_equal(Digest::SHA256.file("test-image.png"), Digest::SHA256.file("got-image.png"))
    end

    def test_render_gif
        art = RubyArt.new

        art.render_gif("got-image.gif")

        assert_equal(Digest::SHA256.file("test-image.gif"), Digest::SHA256.file("got-image.gif"))
    end
       
end
