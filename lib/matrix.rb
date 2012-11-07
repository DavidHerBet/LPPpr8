# matrix.rb

require "racional"

class Matrix
  
  def initialize(matrix, tam = matrix[0].size)
    raise ArgumentError, "Creastes un vector, no una matriz" unless tam >= 2
    @matrix = matrix
    @filas = matrix.size
    @columnas = tam
  end
  
  attr_reader :matrix, :filas, :columnas
  
  def mostrar_matrix
    if matrix[0][0].is_a? Numeric then
    fil = col = 0
    puts
    puts "Matrix:"
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
    
    elsif matrix[0][0].is_a? Racional
      fil = col = 0
      puts
      puts "Matrix:"
      while fil < filas
	while col < columnas
	  print("#{matrix[fil][col].mostrar_fraccion} ")
	  col += 1
	end
	puts
	fil += 1
	col = 0
      end
      puts
      
    else
	puts "ERROR"
    end
  end
  
  def formato_racional
    raise unless matrix[0][0].is_a? Racional
    fil = col = 0
    formato = ""
    formato << "["
    while fil < filas
      formato << "["
      while col < columnas
	if col == (columnas - 1)
	  formato << "#{matrix[fil][col].mostrar_fraccion}"
	else 
	  formato << "#{matrix[fil][col].mostrar_fraccion}, "
	end
	col += 1
      end
      if fil == (filas - 1)
	formato << "]"
      else
	formato << "], "
      end
      fil += 1
      col = 0
    end
    formato << "]"
    formato
  end
  
  def +(o)
    raise unless (o.is_a? Matrix) and (filas == o.filas) and (columnas == o.columnas)
      mat = []
      fil = col = 0
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
      Matrix.new(mat)
  end
  
    def *(o)
    raise unless (o.is_a? Matrix) and (filas == o.filas) and (columnas == o.columnas)
      mat = []
      fil = col = 0
      while fil < filas
	while col < columnas
	  if col == 0
	    mat << [matrix[fil][col] * o.matrix[fil][col]]
	  else
	    mat[fil] << (matrix[fil][col] * o.matrix[fil][col])
	  end
	  col += 1
	end
	fil += 1
	col = 0
      end
      Matrix.new(mat)
  end
  
end