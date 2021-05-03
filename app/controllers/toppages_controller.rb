class ToppagesController < ApplicationController
  def index
    @questions = Question.all
    @rank_questions = Question.all.order(impressions_count: 'DESC')
    
  end
end
