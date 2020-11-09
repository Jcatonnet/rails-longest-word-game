class GamesController < ApplicationController
    def new
        @letters = ('a'..'z').to_a.sample(10)
    end

    def score
        @letters = params[:letters].split(" ")
        @answer = params[:word].chars
         @answer.each do |letter|
            if @letters.include?(letter) && @answer.count(letter) <= @letters.count(letter)
            @result = "that works"
            else 
            @result = "Sorry but #{@answer.join.upcase} cant be build out of #{@letters.join(",").upcase}"
            end
         end
    end
end



