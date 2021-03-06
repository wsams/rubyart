rubyart
=======

Generate interesting PNG and animated GIFs using Ruby.

See [http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas](http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas) for information on PNG.

You will need to install the following dependencies. On Ubuntu you can install `imagemagick` and `libmagickwand-dev` in order to install `rmagick`

    gem install png
    gem install RubyInline
    gem install rmagick

`render.rb` is a sample script that demonstrates usaged of `rubyart.rb`.

Example usage and image produced
--------------------------------
To render an image it is important to understand how the engine works. We loop over the coordinates
of an image. The `x` and `y` points, and for each point we generate an `rgb` color. A color for red, green,
and blue. First we generate `r`. To do this we have some numbers available. The `x` and `y` coordinates, 
and a `gif_factor` which is some number we choose. Mostly used when generating gifs so we can ignore it here,
except for the fact that it is the first parameter of `render_img`.

The colors are generated in the following order: `r`, `g`, `b`. First `r` is generated and we only can
create a mathematical expression with `x`, `y`, and `gif_factor`. The second color is `g`. We have the
same variables to work with plus the additional `r` value. The third and last color is `b`. Again we
have all of the previous variables to work with, plus the additional `g` value.

At each stage here are the values we have available. `r: x, y, gif_factor`, `g: x, y, r, gif_factor`,
`b: x, y, r, g, gif_factor`.

First we need to require the `rubyart` library.

    require_relative 'rubyart'

Next create a new `RubyArt` object.

    art = RubyArt.new

Now we set three lambda expressions on the `art` object. `r_fn` sets the red color, `g_fn` sets the green
color, and `b_fn` sets the blue color. Above we mentioned the available values so we can return some
value based on some mathematical operations.

    art.r_fn = lambda { |x, y, gif_factor| return x + y + gif_factor }
    art.g_fn = lambda { |x, y, r, gif_factor| return r + x + y + gif_factor }
    art.b_fn = lambda { |x, y, r, g, gif_factor| return g + r + x + y + gif_factor }

Finally render the image.

    art.render_img(0, 'image.png')

And here is the output.

<a target="_blank" href="image.png"><img src="image.png" alt="sample rendered image" /></a>

Example GIFs
------------
To generate an animated GIF we start out as described in the image section above, but this time
we call `art.render_gif('example.gif')` instead of `render_img`. 

    art.render_gif('example.gif')

This is where the `gif_factor` comes in to play. Currently it is the GIF frame number. The current
number of frames is 256 and cannot currently be changed. e.g. `0 <= gif_factor <= 255`

Due to the size of each GIF (~4-6mb) I created a gallery on imgur.

<a target="_blank" href="http://imgur.com/a/h8Yot">http://imgur.com/a/h8Yot</a>
