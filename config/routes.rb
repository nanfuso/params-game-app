Rails.application.routes.draw do
    get '/params_games_app' => 'examples#params_example'
    get '/guessing_game/:user_guess' => 'examples#guess'
    
    get '/form_show_guess' => 'examples#form_show'
    post '/form_send_guess' => 'examples#form_send'
end
