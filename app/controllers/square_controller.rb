class SquareController < ApplicationController
  def calculateSquare

    render({ :template => "calculate_templates/square"})
  end
end
