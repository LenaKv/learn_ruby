class RPNCalculator

  def initialize
    @stack = Array.new()
  end

  def push value
    @stack.push( value )
  end

  def plus
    @stack.size > 1 ? @stack.push( @stack.pop() + @stack.pop() ) : raise_error
  end

  def minus
    @stack.size > 1 ? @stack.push( @stack.pop() - @stack.pop() ) : raise_error
  end

  def divide
    @stack.size > 1 ? @stack.push( @stack.pop().to_f / @stack.pop().to_f ) : raise_error
  end

  def times
    @stack.size > 1 ? @stack.push( @stack.pop() * @stack.pop() ) : raise_error
  end

  def value
    @stack[ @stack.size - 1 ]
  end

  def raise_error
    raise "calculator is empty"
  end

  def tokens str
    str.split(" ").map { |val| ("1".."9").include?(val) ? val.to_i : val.to_sym }
  end

  def evaluate str
    tokens(str).each do |val|
      case val
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push val
      end
    end
   value
  end

end
