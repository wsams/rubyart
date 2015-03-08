rubyart
=======

Generate interesting PNG and animated GIFs using Ruby.

See [http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas](http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas) for information on PNG.

You will need to install the following dependencies.

    gem install png
    gem install RubyInline

Run `ruby render.rb 0 image.png` to generate `image.png`. The 1st argument is a magic number for altering the generated image. The 2nd argument is the output file name.

Update the `r`, `g`, and `b` variables with math expressions to change the image produced.

Example image
-------------
<a target="_blank" href="image.png"><img src="image.png" alt="sample rendered image" /></a>

Animated GIFs
=============

To use `make_gifs.rb` to create animated gifs from generated PNGs you will need to install RMagick.

On a Debian based machine you may need to install the following programs. See [http://stackoverflow.com/questions/3704919/installing-rmagick-on-ubuntu](http://stackoverflow.com/questions/3704919/installing-rmagick-on-ubuntu) for more information.

    sudo apt-get install imagemagick libmagickwand-dev

Then you can install `rmagick`.

    gem install rmagick

Run `ruby make_gif.rb` to generate `example.gif`. Temporary PNG files will be left in the directory `gifs/`.

To generate other interesting GIFs update the `gif_factor` passed to `render.rb` from `make_gif.rb`. Also update the mathematical expressions for `r`, `g`, and `b` inside `render.rb`.

Example GIFs
------------
<a target="_blank" href="example.gif"><img src="http://i.imgur.com/tZppxZ2.gif" alt="sample rendered gif" /></a> <a target="_blank" href="example.gif"><img src="http://i.imgur.com/BUW3dXU.gif" alt="sample rendered gif" /></a>
