# rubyart

A port of my JsArt port of my PHPArt project. Given various mathematical expressions one can generate interesting PNG images.

See [http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas](http://www.rubydoc.info/gems/png/1.1.0/PNG/Canvas) for information on PNG.

You will need to install the following dependencies.

    gem install png
    gem install RubyInline

Run `ruby render.rb` to generate `image.png`.

Update the `r`, `g`, and `b` variables with math expressions to change the image produced.
