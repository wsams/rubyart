require_relative 'rubyart'

art = RubyArt.new
art.r_fn = lambda { |x, y, gif_factor| return x + y + gif_factor }
art.g_fn = lambda { |x, y, r, gif_factor| return r + x + y + gif_factor }
art.b_fn = lambda { |x, y, r, g, gif_factor| return g + r + x + y + gif_factor }

# Render a single image
art.render_img(0, 'image.png')

# Render an animated GIF
art.render_gif('example.gif')
