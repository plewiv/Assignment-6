Assignment6::Application.routes.draw do

  get "clear/clear"

  match 'throw/:type' => 'throw#player_throw'
  match 'stats/stats' => 'stats#stats'
end
