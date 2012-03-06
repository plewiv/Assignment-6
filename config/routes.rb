Assignment6::Application.routes.draw do

  match "clear/clear" => 'clear#clear'
  match 'throw/:type' => 'throw#player_throw'
  match 'stats/stats' => 'stats#stats'
end
