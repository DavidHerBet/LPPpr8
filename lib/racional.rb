# racional.rb

class Racional

  include Comparable
  
  def initialize(num, den)
    div = mcd(num, den)
    @numerador = num/div
    @denominador = den/div
  end

  def mcd(a,b)
    return a if b == 0
    mcd(b, a%b)
  end
  
  attr_reader :numerador, :denominador
  
  def num
    @numerador
  end
  
  def denom
    @denominador
  end
  
  def mostrar_fraccion
    "#{num}/#{denom}"
  end
  
  def mostrar_flotante
    num.to_f/denom
  end
  
  def ==(o)
    begin
      return ((num == o.num) and (denom == o.denom)) if o.instance_of? Racional
      false
    rescue
      false
    end
  end
  
  def abs
    (num.to_f/denom).abs
  end
  
  def reciprocal
    "#{denom}/#{num}"
  end
  
  def -@
    "-#{denom}/#{num}"
  end
  
  def +(o)
    Racional.new(num*o.denom+o.num*denom,denom*o.denom).mostrar_fraccion
  end
  
  def -(o)
    Racional.new(num*o.denom-o.num*denom,denom*o.denom).mostrar_fraccion
  end
  
  def *(o)
    Racional.new(num*o.num,denom*o.denom).mostrar_fraccion
  end
  
  def /(o)
    Racional.new(num*o.denom,denom*o.num).mostrar_fraccion
  end
  
  def %(o)
    Racional.new(num%denom, o.num%o.denom).mostrar_fraccion
  end
  
  def <=>(o)
    return nil unless o.instance_of? Racional
    (num and denom) <=> (o.num and o.denom)
  end
  
end