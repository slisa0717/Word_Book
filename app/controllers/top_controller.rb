class TopController < ApplicationController
  def index
      color_array = ["red", "blue", "green", "yellow", "pink"]
      @color = color_array.sample

    if @color == "red"
       render "lisa" 
    end
  end

  
  def lisa
  end





end
