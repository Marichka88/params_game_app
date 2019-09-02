Rails.application.routes.draw do
  namespace :api do
    get '/my_name' => 'games#my_name'
    get '/whats_in_a_name'=> 'games#check_world'
    get '/string_guess' => 'games#string_guess'
    get '/url_segment_params/:wildcard/butter/:pickle_rick/philosophy' => 'games#url_segment_params_action'
    get '/segment_guess/:guess' => 'games#segment_guess
    
  end
end
