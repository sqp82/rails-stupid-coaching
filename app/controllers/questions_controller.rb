class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question] 
    if @question == "I am going to work"
      @answers = "Great!"
    elsif @question.end_with?("?")
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
