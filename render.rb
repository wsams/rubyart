require 'rubygems'
# gem install png
# gem install RubyInline
require 'png'

rows = 500
cols = 500

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

canvas = PNG::Canvas.new(rows, cols)

0.upto(rows - 1) do |x|
    0.upto(cols - 1) do |y|
        r = make_int(x);
        g = make_int(y + y);
        b = make_int(x);
        canvas[x, y] = PNG::Color.new(r, g, b)
    end
end

png = PNG.new(canvas)
png.save 'image.png'
