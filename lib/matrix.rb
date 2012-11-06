# matrix.rb

class Matrix
  
  def initialize(matrix, tam = matrix[0].size)
    raise ArgumentError, "Creastes un vector, no una matriz" unless tam >= 2
    @matrix = matrix
    @filas = matrix.size
    @columnas = tam
  end
  
  attr_reader :matrix, :filas, :columnas
  
  def mostrar
    fil = col = 0
    puts
    puts "Matriz:"
    while fil < filas
      while col < columnas
	print("#{matrix[fil][col]} ")
	col += 1
      end
      puts
      fil += 1
      col = 0
    end
    puts
  end
  
  def +(o)
    raise unless (o.is_a? Matrix) and (filas == o.filas) and (columnas == o.columnas)
    mat = []
    fil = col = sum = 0
    while fil < filas
      while col < columnas
	if col == 0
	  mat << [matrix[fil][col] + o.matrix[fil][col]]
	else
	  mat[fil] << (matrix[fil][col] + o.matrix[fil][col])
	end
	col += 1
      end
      fil += 1
      col = 0
    end
    
    Matrix.new(mat).matrix
    
  end
  
  
end
# 
# a = Matrix.new([[1,2,3],[4,5,6]])
# b = Matrix.new([[3,3,3],[3,3,3]]).mostrar
# puts a.matrix.inspect