def measure (n=1)
  total_time = 0
  n.times do
    start_time = Time.now
    yield
    total_time += Time.now - start_time
  end
  total_time / n
end
