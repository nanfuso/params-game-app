class ExamplesController < ApplicationController
    def params_example
        if params["your_name"]                                      #stops it from getting an error message if nothing is input into the params
            @name = params["your_name"].upcase

            if @name.starts_with?("A")
                @print = "Hey your name starts with the first letter of the alphabet!"
            end
        end 
    end

    def guess
        @user_guess = params["user_guess"].to_i
        mystery_number = 36
        
        if @user_guess == mystery_number
            @answer_message = "right on the money!!! congrats, you win nothing"
        elsif @user_guess < mystery_number
            @answer_message = "too low! Guess a bigger number"
        else @user_guess > mystery_number
            @answer_message = "too high! Guess a smaller number"
        end
    end

    def form_show

    end

    def form_send
        @user_guess = params["user_guess"].to_i
        mystery_number = 36
        
        if @user_guess == mystery_number
            @answer_message = "right on the money!!! congrats, you win nothing"
        elsif @user_guess < mystery_number
            @answer_message = "too low! Guess a bigger number"
        else @user_guess > mystery_number
            @answer_message = "too high! Guess a smaller number"
        end
        render 'form_show.html.erb'
    end

end
