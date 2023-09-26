class HomeController < ApplicationController 
  def home

    render({:template => "home_template/home"})
  end
end
