class SubmittedrandomController < ApplicationController 
  def submittedRandom
    @min = params.fetch("minimum").to_i
    @max = params.fetch("maximum").to_i
    @result = Random.new
    @random_num = @result.rand(@min..@max)
    render({:template => "submitted_templates/subrandom"})
  end
end
