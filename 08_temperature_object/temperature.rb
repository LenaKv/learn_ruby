class Temperature

  attr_accessor :f, :c

  def initialize options
    @f = options[:f]
    @c = options[:c]
  end

  def in_fahrenheit
    @c == nil ? @f : @c * 9.0 / 5.0 + 32
  end

  def in_celsius
    @f == nil ? @c : (@f - 32) * 5.0 / 9.0
  end

  def self.from_celsius (temperature)
    new ({ :c => temperature })
  end

  def self.from_fahrenheit (temperature)
    new ({ :f => temperature })
  end

end


class Celsius < Temperature

  def initialize temperature
    super({ :c => temperature })
  end

end


class Fahrenheit < Temperature

  def initialize temperature
    super({ :f => temperature })
  end

end
