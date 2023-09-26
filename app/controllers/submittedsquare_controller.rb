class SubmittedsquareController < ApplicationController 
  def submittedSquare
    @num = params.fetch("number").to_f
    @squared = @num * @num
    render({:template => "submitted_templates/subsquare"})
  end
end
