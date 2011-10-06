#only work in ruby1.8.7
#generate manbrot image

require 'complex'

def mandelbrot(cr, ci)
  limit = 95
  iterations = 0
  c = Complex.new(cr, ci)
  z = Complex.new(0,0)
  while iterations<limit and z.abs<10
    z=z*z+c
    iterations+=1
  end
  iterations
end

def mandel_calc(min_r, min_i, max_r, max_i, res)
  cur_i = min_i
  while cur_i > max_i
    print "|"
    cur_r = min_r
    while cur_r < max_r
      ch = 127 - mandelbrot(cur_r, cur_i)
      printf "%c", ch
      cur_r += res
    end

    print "|\n"
    cur_i -= res
  end
end

mandel_calc(-2, 1, 1, -1, 0.04)


