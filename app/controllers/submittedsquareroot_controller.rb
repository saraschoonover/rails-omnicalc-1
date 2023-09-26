class SubmittedsquarerootController < ApplicationController 
  def submittedSquareroot
    @num = params.fetch("square").to_f
    @sqrt = Math.sqrt(@num)

    render({:template => "submitted_templates/subsquareroot"})
  end
end
