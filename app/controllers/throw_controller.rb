class ThrowController < ApplicationController
before_filter do
	@defeat = {rock: :scissors, paper: :rock, scissors: :paper, rock: :lizard, lizard: :spock, lizard: :paper, spock: :scissors, spock: :rock, scissors: :lizard, paper: :spock}
    @throws = @defeat.keys
	@computer_throw = @throws.sample
end
  def player_throw
	
  end

end
