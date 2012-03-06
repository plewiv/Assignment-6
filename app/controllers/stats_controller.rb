class StatsController < ApplicationController
  def stats
	@win = session[:win]
	@loss = session[:loss]
	@tie = session[:tie]
  end

end
