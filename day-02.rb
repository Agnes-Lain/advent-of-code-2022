require_relative 'common'
require 'byebug'

ADV = {
  "A"=> 1,
  "B"=> 2,
  "C"=> 3
}

MY = {
  "X"=> 1,
  "Y"=> 2,
  "Z"=> 3
}

RE = {
  "X"=> 0,
  "Y"=> 3,
  "Z"=> 6
}
class Day2 < AdventDay
  def first_part
    # input
    score = 0
    input.each do |match|
      a = match.split(" ")
      score += match_score(a[0],a[1])
    end
    score
  end

  def second_part
    score = 0
    input.each do |match|
      a = match.split(" ")
      score += new_cal(a[0],a[1])
    end
    score
  end

  private

  def convert_data(data)
    super
  end

  def debug_input
    "A Y\nB X\nC Z"
  end

  def match_score(adv_move, my_move)
    score = MY[my_move]
    case adv_move
    when "A"
      if my_move == "X" 
        score += 3
      elsif my_move == "Y"
        score += 6
      end
    when "B"
      if my_move == "Y" 
        score += 3
      elsif my_move == "Z"
        score += 6
      end
    else
      if my_move == "X" 
        score += 6
      elsif my_move == "Z"
        score += 3
      end  
    end
    score
  end

  def new_cal(adv_move, result)
    score = RE[result]
    # byebug
    case result
    when "Z"
      if adv_move == "A"
        score += ADV["B"]
      elsif adv_move == "B"
        score += ADV["C"]
      else
        score += ADV["A"]
      end
    when "Y"
      score += ADV[adv_move]
    else
      if adv_move == "A"
        score += ADV["C"]
      elsif adv_move == "B"
        score += ADV["A"]
      else
        score += ADV["B"]
      end
    end
    score
  end
end

Day2.solve


