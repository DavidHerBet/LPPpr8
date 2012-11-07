# matrix_main.rb

require 'matrix'

a = Matrix.new([[1,2,3],[4,5,6]])
b = Matrix.new([[3,3,3],[3,3,3]])
x = Matrix.new([[Racional.new(4,8),Racional.new(3,2)],[Racional.new(5,2),Racional.new(4,8)]])
y = Matrix.new([[Racional.new(3,2),Racional.new(3,2)],[Racional.new(3,2),Racional.new(3,2)]])

puts "a"
a.mostrar_matrix
puts "b"
b.mostrar_matrix
puts "a+b"
(a+b).mostrar_matrix
puts "a*b"
(a*b).mostrar_matrix

puts "x"
x.mostrar_matrix
puts "y"
y.mostrar_matrix
puts "x+y"
(x+y).mostrar_matrix
puts "x*y"
(x*y).mostrar_matrix