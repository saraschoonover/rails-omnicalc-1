class SubmittedpaymentController < ApplicationController 
  def submittedPayment
    @apr = params.fetch("apr").to_f
    @num_of_years = params.fetch("year").to_i
  
    @principal = params.fetch("principal").to_i
  
    periods_remaining = @num_of_years * 12
    monthly_interest_rate = @apr.round(4) / 100 / 12
    numerator = @principal * monthly_interest_rate * (1 + monthly_interest_rate)** periods_remaining
    denominator = (1 + monthly_interest_rate)** periods_remaining - 1
  
    @monthly_payment = numerator / denominator
  
    @formatted_apr = sprintf("%.4f", @apr)
    render({:template => "submitted_templates/subpayment"})
  end
end
