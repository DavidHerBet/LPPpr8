# matrix_spec.rb

require "rspec"
require "matrix"
require "racional"

describe Matrix do
  
  before :each do
    @m1_ent = Matrix.new([[1,2,3],[4,5,6]])
    @m2_ent = Matrix.new([[3,3,3],[3,3,3]])
  end
  
  it "Se debe poder sumar dos matrices de enteros" do
    (@m1_ent+@m2_ent).inspect.should == "[[4, 5, 6], [7, 8, 9]]"
  end
  
#   it "Se debe poder sumar dos matrices de racionales" do
#   end
#   
#   it "Se debe poder multiplicar una matriz de Enteros" do
#   end
#   
#   it "Se debe poder multiplicar dos matrices de Racionales" do
#   end
  
end