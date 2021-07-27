class QuestionsController < ApplicationController
  def ask
    @asks = ["I am going to work", "?"]
  end
  def answer
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if params[:question] == "I am going to work"
      @answers = "Great!"
    elsif params[:question].end_with?("?")
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
    
  end
end
