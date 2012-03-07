class ThrowController < ApplicationController
before_filter do
	@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
    @throws = @defeat.keys
	@computer_throw = @throws.sample
	session[:win]||=0
	session[:loss]||=0
	session[:tie]||=0
end
  def player_throw
	@player_throw = params[:type].to_sym
	if !@throws.include?(@player_throw)
		halt 403, "You must throw one of the following: #{@throws}"
	end
	if @player_throw == @computer_throw
		session[:tie] += 1
		@message = "Tied"
	elsif @computer_throw == @defeat[@player_throw]
		session[:win] += 1
		@message = "You win!"
	else
		session[:loss] += 1		
		@message = "You lose!"
	end
  end

end
