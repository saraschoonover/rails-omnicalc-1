class SquarerootController < ApplicationController
  def calculateSquareRoot

    render({ :template => "calculate_templates/squareroot"})
  end
end
