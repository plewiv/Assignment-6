class ClearController < ApplicationController
  def clear
	session[:win] = 0
	session[:loss] = 0
	session[:tie] = 0
  end

end
