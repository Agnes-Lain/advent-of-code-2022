require_relative 'common'
require 'byebug'

class Day6 < AdventDay
  def first_part
    arr = []
    input[0].each_char do |letter|
      if arr.size < 4
        # byebug
        arr << letter
      else
        if arr.last(4).uniq.size == 4
          return arr.size
        else
          arr << letter
        end
      end
    end
  end

  def second_part
    arr = []
    input[0].each_char do |letter|
      if arr.size < 14
        # byebug
        arr << letter
      else
        if arr.last(14).uniq.size == 14
          return arr.size
        else
          arr << letter
        end
      end
    end
  end

  private

  def convert_data(data)
    super
  end

  def debug_input
    "mjqjpqmgbljsphdztnvjfqwrcgsmlb"
  end

end

Day6.solve
