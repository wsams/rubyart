The following variations may be used in `RubyArt.render_img`

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x * y)
                g = make_int(x + r * gif_factor)
                b = make_int(r * g + gif_factor)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor - (x + y))
                g = make_int(r - y ** 2)
                b = make_int(r - gif_factor)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor + (x + Random.rand(y + 1)))
                g = make_int(y - Random.rand(y + 1))
                b = make_int(gif_factor - (x / (y + 1)))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end 
        end 

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor + (x + Random.rand(y + 1)))
                g = make_int(y - Random.rand(y + 1))
                b = make_int(gif_factor - (x / (y + 1)))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor + (x + Random.rand(y)))
                g = make_int(y - Random.rand(y))
                b = make_int(gif_factor - (x / (y + 1)))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x - y * gif_factor)
                g = make_int(y - x - r * gif_factor)
                b = make_int(x - y - r - g * gif_factor)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + y + gif_factor)
                g = make_int(x + y - r - gif_factor)
                b = make_int(x - y - r - g * gif_factor)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(Time.now.to_i + gif_factor)
                g = make_int(x - r)
                b = make_int(gif_factor - (2 * x))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(Time.now.to_i + gif_factor)
                g = make_int(x - r)
                b = make_int(gif_factor - (2 * x))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + gif_factor)
                g = make_int(y - gif_factor)
                b = make_int(Math.sin(r) ** 2 + Math.cos(g) ** 2)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + gif_factory)
                g = make_int(y - gif_factory)
                b = make_int(Math.sin(r) ** 2 + Math.cos(g) ** 2)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor + Math.cos(x))
                g = make_int(gif_factor - Math.sin(y))
                b = make_int(r ** 2 - g ** 2)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + y + (gif_factor % 2))
                g = make_int(gif_factor % (r + 1))
                b = make_int(r - gif_factor - g)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + y + (gif_factor % 2))
                g = make_int(gif_factor % r)
                b = make_int(r - gif_factor - g)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + y + (gif_factor % 2))
                g = make_int(r + (x - y) + 2 * gif_factor)
                b = make_int(g + (r - x) + y + 3 * gif_factor)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + y + 1 * gif_factor)
                g = make_int(r + x + y + 2 * gif_factor)
                b = make_int(g + r + x + y + 3 * gif_factor)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + y + gif_factor)
                g = make_int(r + x + y + gif_factor)
                b = make_int(g + r + x + y + gif_factor)
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x ** (y - x))
                g = make_int(x ^ (r >> (1 + gif_factor)))
                b = make_int(gif_factor / (x + y + 1))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x ** (y - x))
                g = make_int(x ^ (r >> (1 + gif_factor)))
                b = make_int(gif_factor / (x + y))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x ^ (y >> gif_factor))
                g = make_int(x ^ (r >> (1 + gif_factor)))
                b = make_int(x ^ ((r + g) >> (2 + gif_factor)))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x ^ (y >> gif_factor))
                g = make_int(x ^ (r >> (1 + gif_factor)))
                b = make_int(x ^ ((r + g) >> (2 + gif_factor)))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + (gif_factor + y))
                g = make_int(x - y + (gif_factor * r))
                b = make_int((3 * gif_factor) - (r + g))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(x + (gif_factor + y))
                g = make_int(x - y + (gif_factor * r))
                b = make_int((3 * gif_factor) - (r + b))
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor & (make_int(x) >> 2));
                g = make_int((gif_factor - (x + y + 1)) - make_int(y + y));
                b = make_int(gif_factor - make_int(x) + (3 & (x >> y)));
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end

        0.upto(cols - 1) do |x|
            0.upto(rows - 1) do |y|
                r = make_int(gif_factor + make_int(x));
                g = make_int(gif_factor - make_int(y + y));
                b = make_int(gif_factor - make_int(x));
                canvas[x, y] = PNG::Color.new(r, g, b)
            end
        end
