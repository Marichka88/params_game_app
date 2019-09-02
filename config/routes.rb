Rails.application.routes.draw do
  namespace :api do
    get '/my_name' => 'games#my_name'
    get '/whats_in_a_name'=> 'games#check_world'
    get '/string_guess' => 'games#string_guess'
    
  end
end
