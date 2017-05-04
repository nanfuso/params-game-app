Rails.application.routes.draw do
    get '/params_games_app' => 'examples#params_example'
    get '/guessing_game/:user_guess' => 'examples#guess'
end
