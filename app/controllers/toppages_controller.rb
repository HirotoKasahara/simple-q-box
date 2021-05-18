class ToppagesController < ApplicationController
  def index
    @questions = Question.all
    @rank_questions = Question.order(impressions_count: 'desc')
    
  end
end
