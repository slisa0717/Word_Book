class ChecksController < ApplicationController
    def index
         @word = Word.random
    end

    def answer_check
        @word = Word.find(params[:word_id])
        @user_answer = params[:japanese]
        @correct_answer = @word.japanese
        @is_correct = @user_answer == @correct_answer
    end
end
