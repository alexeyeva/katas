class Calc
  attr_accessor :first_number, :second_number, :operator

  { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9 }.each do |name, number|
    define_method name do
      @first_number ? @second_number = number : @first_number = number
      
      return @first_number.to_i.method(@operator).(@second_number.to_i) if @second_number
      return self
    
    end
  end

   { plus: "+", minus: "-", times: "*", divided_by: "/" }.each do |name, operator|
    define_method name do
      @operator ||= operator
      
      return self
    end
  end

end

p Calc.new.one.plus.one

p Calc.new.four.plus.five # 9

p Calc.new.five.plus.four # 9