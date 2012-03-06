class ApplicationController < ActionController::Base
  protect_from_forgery
  session :on
  before_filter :test
  skip_before_filter :test
 
	def test
		session[:win] = 0
		session[:loss] = 0
		session[:tie] = 0
	end	
end
