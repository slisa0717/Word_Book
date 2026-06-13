class ChecksController < ApplicationController
    def index
         @word = Word.random
    end
end
