# frozen_string_literal: true

# Questions class
class QuestionsController < ApplicationController
  def ask
    # html in the view!
  end

  def answer
    @question = params[:question]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.last == '?'
                'Silly question, get dressed and go to work!'
              else "I don't care, get dressed and go to work!"
              end
    # no need for this, rails does this:  params[:answer] = @answer
  end
end
