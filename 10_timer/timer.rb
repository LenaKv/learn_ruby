class Timer

  def seconds
    @seconds = 0
  end

  def seconds= seconds_value
    @seconds = seconds_value
  end

  def time_string
    result=[]
    result.push(padded(@seconds.div(3600)), padded(@seconds.div(60).modulo(60)), padded(@seconds.modulo(60))).join(":")
  end

  def padded time
    "%02d" % time
  end

end
