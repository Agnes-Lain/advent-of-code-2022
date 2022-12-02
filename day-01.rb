require_relative 'common'

class Day1 < AdventDay
  def first_part
    a = cal(input)
    a.max
  end

  def second_part
    a = cal(input)
    a.max(3).sum
  end

  private

  def convert_data(data)
    super
  end

  def debug_input
    "1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000"
  end

  def cal(input)
    a = input.join(",").split(",,")
    na = a.map{|e| e.split(",").map{|s| s.to_i}}
    c = na.map{|arr| arr.sum}
    c
  end
end

Day1.solve
