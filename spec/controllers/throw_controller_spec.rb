require 'spec_helper'

describe ThrowController do

  describe "GET 'player_throw'" do
    it "should be successful" do
      get 'player_throw'
      response.should be_success
    end
  end

end
