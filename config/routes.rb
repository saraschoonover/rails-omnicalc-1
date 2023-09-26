Rails.application.routes.draw do
  get("/", :controller => "home", :action => "home")
  get("/square/new", :controller => "square", :action => "calculateSquare")
  get("/square_root/new", :controller => "squareroot", :action => "calculateSquareRoot")
  get("/payment/new", :controller => "payment", :action => "calculatePayment")
  get("/random/new", :controller => "random", :action => "calculateRandom")

  get("/process_url/random/", :controller => "submittedrandom", :action => "submittedRandom")
  get("/process_url/payment", :controller => "submittedpayment", :action => "submittedPayment")
  get("/process_url/square/new", :controller => "submittedsquare", :action => "submittedSquare")
  get("/process_url/square_root/new", :controller => "submittedsquareroot", :action => "submittedSquareroot")
end
