# matrix_spec.rb

require "rspec"
require "matrix"

describe Matrix do
  
  before :each do
    @m1_ent = Matrix.new([[1,2,3],[4,5,6]])
    @m2_ent = Matrix.new([[3,3,3],[3,3,3]])
    @m1_rac = Matrix.new([[Racional.new(4,8),Racional.new(3,2)],[Racional.new(5,2),Racional.new(4,8)]])
    @m2_rac = Matrix.new([[Racional.new(3,2),Racional.new(3,2)],[Racional.new(3,2),Racional.new(3,2)]])
  end
  
  it "Se debe poder sumar dos matrices de enteros" do
    (@m1_ent+@m2_ent).matrix.inspect.should == "[[4, 5, 6], [7, 8, 9]]"
  end
  
  it "Se debe poder sumar dos matrices de racionales" do
    (@m1_rac+@m2_rac).formato_racional.should == "[[2/1, 3/1], [4/1, 2/1]]"
  end
  
  it "Se debe poder multiplicar una matriz de Enteros" do
    (@m1_ent*@m2_ent).matrix.inspect.should == "[[3, 6, 9], [12, 15, 18]]"
  end
#   
#   it "Se debe poder multiplicar dos matrices de Racionales" do
#     (@m1_rac*@m2_rac).inspect.should == "[[3/4, 9/4], [15/4, 3/4]]"
#   end
#   
end