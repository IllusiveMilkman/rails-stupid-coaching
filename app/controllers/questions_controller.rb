class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # raise
    @answer = params['question']
    @answer.capitalize!

    if @answer.downcase == 'I am going to work'
      @coach_message = 'Great!'
    elsif @answer[-1] == '?'
      @coach_message = 'Silly question, get dressed and go to work!'
    else
      @coach_message = "I don't care, get dressed and go to work!"
    end
  end
end
