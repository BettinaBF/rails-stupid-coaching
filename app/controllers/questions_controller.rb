class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:question_type]
    if @user_input.blank?
      @coach_answer = "What's your question?"
    elsif @user_input == "I am going to work"
      @coach_answer = "Great!"
    elsif @user_input.end_with? "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
