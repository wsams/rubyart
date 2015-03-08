rubyart
=======

Generate interesting PNG and animated GIFs using Ruby.

See [http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas](http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas) for information on PNG.

You will need to install the following dependencies. On Ubuntu you can install `imagemagick` and `libmagickwand-dev` in order to install `rmagick`

    gem install png
    gem install RubyInline
    gem install rmagick

`render.rb` is a sample script that demonstrates usaged of `rubyart.rb`.

Currently to generate different images and GIFs you will need to modify the two methods in `rubyart.rb`: `render_img` and `render_gif`.

For example modify usage of `gif_factor` and the values of `r`, `g`, and `b`. Provide various mathematical expressions.

Example image
-------------
<a target="_blank" href="image.png"><img src="image.png" alt="sample rendered image" /></a>

Example GIFs
------------
Due to the size of each GIF (~4-6mb) I created a gallery on imgur.

<a target="_blank" href="http://imgur.com/a/h8Yot">http://imgur.com/a/h8Yot</a>
