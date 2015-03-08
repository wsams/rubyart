require './rubyart.rb'

art = RubyArt.new

# Render a single image
art.render_img(0, 'image.png')

# Render an animated GIF
art.render_gif('example.gif')
