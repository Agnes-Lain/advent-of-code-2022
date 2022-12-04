require_relative 'common'
require 'byebug'

class Day4 < AdventDay
  def first_part
    arr = input.map { |e| e.split(",") }
    arr1 = arr.map { |a| a.map { |e| e.split('-') }}
    count = 0
    arr1.each do |a|
      # byebug
      sub_a = (a[0][0].to_i..a[0][1].to_i).to_a
      sub_b = (a[1][0].to_i..a[1][1].to_i).to_a
      count += 1 if (sub_a - sub_b).empty? || (sub_b - sub_a).empty?
    end
    count
  end

  def second_part
    arr = input.map { |e| e.split(",") }
    arr1 = arr.map { |a| a.map { |e| e.split('-') }}
    count = 0
    arr1.each do |a|
      # byebug
      sub_a = (a[0][0].to_i..a[0][1].to_i).to_a
      sub_b = (a[1][0].to_i..a[1][1].to_i).to_a
      count += 1 if (sub_a - sub_b) != sub_a
    end
    count
  end

  private

  def convert_data(data)
    super
  end

  def debug_input
    "2-4,6-8\n2-3,4-5\n5-7,7-9\n2-8,3-7\n6-6,4-6\n2-6,4-8"
  end

end

Day4.solve
