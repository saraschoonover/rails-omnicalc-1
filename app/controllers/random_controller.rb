class RandomController < ApplicationController
  def calculateRandom
    @min_num = rand(1..100)
    @max_num = rand(1..100)
    
    render({ :template => "calculate_templates/random"})
  end
end
