def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  s = 0
  i = 0
  while i < arr.size
    s += arr[i]
    i += 1
  end
  s
end

def multiply(*args)
  result = 1
  args.each { |num| result = result * num }
  result
end

def power(num, pow)
  num ** pow
end

def factorial(n)
  n <= 1 ? 1 : n * factorial(n - 1)
end
