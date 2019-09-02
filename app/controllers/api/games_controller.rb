class Api::GamesController < ApplicationController 
  def my_name
    @name = params[:name]

    render 'my_name_view.json.jb'

  end

  def check_world 
    @name = params[:name]

    puts "=" * 50
    p @name[0].upcase =="A"
    puts "=" * 50



    if @name[0] == "A"
      @message = "Hey your name starts with the first letter of the alphabet!"
    end

    render 'starts_with.json.jb'
  end

  def string_guess
    @number = params[:number]
    render 'string_guess.json.jb'
  end

  def url_segment_params_action
    @message = params[:wildcard]
    render 'url_segment_params_view.json.jb'
  end

  def segment_guess
    target_number = 42
    @number = params[:guess].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "You guessed too low, aim higher in life and in your guess."
    else
      @message = "You Win!!!"
    end

    render 'segment_guess.json.jb'
  end

end

end
