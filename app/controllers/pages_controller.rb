class PagesController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    if @question.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @response = "Great!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
