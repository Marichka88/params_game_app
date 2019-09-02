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


end
