class PaymentController < ApplicationController
  def calculatePayment

    render({ :template => "calculate_templates/payment"})
  end
end
