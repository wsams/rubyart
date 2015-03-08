require 'rubygems'
require 'png'
require 'RMagick'

class RubyArt

    def render_img(gif_factor, img_name)
        rows = 125
        cols = 250

        def make_int(i)
            i = Math.sqrt(i ** 2)
            if (i > 0 && i < 1)
                i = (i * 100).round
            end
            i = i.round
            if (i > 255)
                i = i % 256
            end
            return i
        end

        canvas = PNG::Canvas.new(cols, rows)

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor + make_int(x));
                g = make_int(gif_factor - make_int(y + y));
                b = make_int(gif_factor - make_int(x));
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        png = PNG.new(canvas)
        png.save img_name
    end

    def render_gif(gif_name)
        if (!File.directory?("gifs"))
            Dir.mkdir("gifs")
        end

        gif_list = Magick::ImageList.new

        0.upto(255) do |x|
            num = x.to_s
            if (num.length == 1)
                num = "00" + num
            elsif (num.length == 2)
                num = "0" + num
            end
            render_img(x, "gifs/image" + num + ".png")
            gif_list.read("gifs/image" + num + ".png")
        end

        gif_list.write(gif_name)
    end

end
