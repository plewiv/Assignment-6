ROCK PAPER SCISSORS APP
BY PETER LEW

rails new Assignment6

changed Gemfile to

	source 'http://rubygems.org'
	gem 'rails', '3.0.11'
	gem 'sqlite3', '1.3.3'

	group :development do
	gem 'rspec-rails', '2.6.1'
	end

	group :test do
		gem 'rspec-rails', '2.6.1'
		gem 'webrat', '0.7.1'
	end
	
rails generate controller throw player_throw

Notes:
creates controller for throwing rock, paper, or scissors
Edited route.rb to match 'throw/:type' => 'throw#player_throw'
added code for throw_controller to play rock paper scissors

rails generate controller stats stats

Notes:
creates controller for stats
Implemented sessions by first initializing on first filter then removing the
intialization afterwards
Edited route.rb to match 'stats/stats' => 'stats#stats'
added code to throw_controller to implement stats

rails generate controller clear clear

Notes:
creates controller for clear
Implemented clearing stats
Edited route.rb to match "clear/clear" => 'clear#clear'