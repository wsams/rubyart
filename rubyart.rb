require "rubygems"
require "png"
require "RMagick"

class RubyArt

    attr_accessor :r_fn
    attr_accessor :g_fn
    attr_accessor :b_fn

    def render_img(gif_factor, img_name)
        rows = 125
        cols = 250

        def make_int(i)
            i = Math.sqrt(i ** 2)

            i = i * 100 if i > 0 && i < 1

            if i > 255
                i % 256
            else
                i
            end
        end

        canvas = PNG::Canvas.new(cols, rows)

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                #r = make_int(x + y + gif_factor)
                r = make_int(@r_fn.call(x, y, gif_factor))

                #g = make_int(r + x + y + gif_factor)
                g = make_int(@g_fn.call(x, y, r, gif_factor))

                #b = make_int(g + r + x + y + gif_factor)
                b = make_int(@b_fn.call(x, y, r, g, gif_factor))

                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        png = PNG.new(canvas)
        png.save(img_name)
    end

    def render_gif(gif_name)
        Dir.mkdir("gifs") if !File.directory?("gifs")

        gif_list = Magick::ImageList.new

        0.upto(255) do |x|
            num = x.to_s
            if num.length == 1
                num = "00#{num}"
            elsif num.length == 2
                num = "0#{num}"
            end
            render_img(x, "gifs/image#{num}.png")
            gif_list.read("gifs/image#{num}.png")
        end

        gif_list.write(gif_name)
    end

end
