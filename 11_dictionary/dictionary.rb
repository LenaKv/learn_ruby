class Dictionary

  def initialize
    @d = Hash.new { |hash, key| hash[key] = [] }
    @d.default = ""
  end

  def entries
    @d
  end

  def add value
   value.is_a?(Hash) ? @d.merge!(value) : @d.merge!(Hash[[ [value] ]])
  end

  def keywords
    @d.keys.sort
  end

  def include? keyword
    @d.has_key? keyword
  end

  def find value
    @d.select { |key, val| key.scan(value).join == value }
  end

  def printable
    @d.map {|key, val| "[#{key}] \"#{val}\""}.sort.join("\n")
  end

end
