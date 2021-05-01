  class AnswersController < ApplicationController
   
    def create
       @question = Question.find(params[:question_id])
       @answer = @question.answers.build(answer_params)
       @answers = @question.answers
      if @answer.save
        flash[:success]="投稿しました"
        redirect_to @question
      else
        flash.now[:danger]="投稿できませんでした"
      render  "questions/show"
      end 
    end
  
    def destroy
    end
    
  private
  def answer_params
    params.require(:answer).permit(:name,:content)
  end 
    
  end
