require_relative 'common'
require 'byebug'

class Day3 < AdventDay
  def first_part
    arr = input.map{|e| [e[0...e.size/2].chars, e[e.size/2..-1].chars]}
    new_a = []
    arr.each do |a|
      sub_a = []
      a[0].each do |l|
        # byebug
        sub_a << l if a[1].include?(l)
      end
      new_a << sub_a.uniq[0]
    end
    # new_a
    new_a.map{ |l| l.bytes[0] > 96 ? l.bytes[0] - 96 : l.downcase.bytes[0] - 70 }.sum
  end

  def second_part
    input
    # byebug
    input_ = input.map { |s| s.chars }
    index = 0
    arr = []
    while index < input_.size
      arr << input_[index..index + 2]
      index += 3
    end
    new_a = []
    arr.each do |a|
      sub_a = []
      a[0].each do |l|
        sub_a << l if a[1].include?(l) && a[2].include?(l)
      end
      new_a << sub_a.uniq[0]
    end
    # new_a
    new_a.map{ |l| l.bytes[0] > 96 ? l.bytes[0] - 96 : l.downcase.bytes[0] - 70 }.sum
  end

  private

  def convert_data(data)
    super
  end

  def debug_input
    "vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\nwMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw"
  end

end

Day3.solve
