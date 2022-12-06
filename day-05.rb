require_relative 'common'
require 'byebug'

class Day5 < AdventDay
  def first_part
    i = input.index("")
    a1 = input[0...i-1]
    .map(&:chars)
    .transpose
    .map(&:reverse)
    .join.gsub(/[\[\]\d]/, "")
    .split
    .map(&:chars)
    arr = []
    a2 = input[i+1..].map do |s| 
      a = s.split(" ")
      h = {a[0]=> a[1].to_i,
          a[2]=> a[3].to_i,
          a[4]=> a[5].to_i
          }
      arr << h
    end
    arr.each do |move|
      # byebug
      m = a1[move["from"]-1].pop(move["move"])
      a1[move["to"]-1] = a1[move["to"]-1] + m.reverse
    end
    # a1
    a1.map{ |a| a.last }.join
  end

  def second_part
    i = input.index("")
    a1 = input[0...i-1]
    .map(&:chars)
    .transpose
    .map(&:reverse)
    .join.gsub(/[\[\]\d]/, "")
    .split
    .map(&:chars)
    arr = []
    a2 = input[i+1..].map do |s| 
      a = s.split(" ")
      h = {a[0]=> a[1].to_i,
          a[2]=> a[3].to_i,
          a[4]=> a[5].to_i
          }
      arr << h
    end
    arr.each do |move|
      # byebug
      m = a1[move["from"]-1].pop(move["move"])
      a1[move["to"]-1] = a1[move["to"]-1] + m
    end
    # a1
    a1.map{ |a| a.last }.join
  end

  private

  def convert_data(data)
    super
  end

  def debug_input
    "    [D]    \n[N] [C]    \n[Z] [M] [P]\n 1   2   3 \n\nmove 1 from 2 to 1\nmove 3 from 1 to 3\nmove 2 from 2 to 1\nmove 1 from 1 to 2"
  end

end

Day5.solve
