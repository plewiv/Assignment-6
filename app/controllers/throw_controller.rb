class ThrowController < ApplicationController
before_filter do
	@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
    @throws = @defeat.keys
	@computer_throw = @throws.sample
end
  def player_throw
	@player_throw = params[:type].to_sym
	if !@throws.include?(@player_throw)
		halt 403, "You must throw one of the following: #{@throws}"
	end
	if @player_throw == @computer_throw
		@message = "No one is a winner :( TIED!"
	elsif @computer_throw == @defeat[@player_throw]
		@message = "You win! Like a BAWS!"
	else
		@message = "YOU LOSE SUCKA!"
	end
  end

end
