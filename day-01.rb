require_relative 'common'

class Day1 < AdventDay
  def first_part
    a = input.join(",").split(",,")
    na = a.map{|e| e.split(",").map{|s| s.to_i}}
    c = na.map{|arr| arr.sum}
    c.max
  end

  def second_part
    a = input.join(",").split(",,")
    na = a.map{|e| e.split(",").map{|s| s.to_i}}
    c = na.map{|arr| arr.sum}
    first = c.max
    c.sort[-3..-1].sum
  end

  private

  def convert_data(data)
    super
  end

  def debug_input
    "1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000"
  end
end

Day1.solve
