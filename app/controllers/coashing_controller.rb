class CoashingController < ApplicationController
  def answer
    @query = params[:query]
    case @query
    when 'what time is it ?'
    @answer = Time.now.asctime
  when @query.include?('?')
    @answer = 'Silly question, get dressed and go to work!'
    when "I am going to work right now!"
    @answer = 'Cool !'
    else
    @answer = "I don't care, get dressed and go to work!"
    end

  end

  def ask
  end
end
