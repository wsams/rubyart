require 'RMagick'

gif_list = Magick::ImageList.new
0.upto(255) do |x|
    num = x.to_s
    if (num.length == 1)
        num = "00" + num
    elsif (num.length == 2)
        num = "0" + num
    end
    xs = x.to_s
    print("ruby render.rb #{xs} gifs/image#{num}.png")
    puts %x(ruby render.rb #{xs} gifs/image#{num}.png)
    gif_list.read("gifs/image#{num}.png")
end

gif_list.write("example.gif")
