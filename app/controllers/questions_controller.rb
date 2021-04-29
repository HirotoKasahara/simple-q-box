class QuestionsController < ApplicationController
  before_action :requier_user_logged_in, only: [:new]
  def new
    @question = current_user.questions.build
  end
  def show
    @question = Question.find(params[:id])
    @answer = @question.answers.build
    @answers = @question.answers

  end 

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      flash[:success]="投稿しました"
      redirect_to current_user
    else
      flash.now[:danger]="投稿できませんでした"
      render :new
    end 
  end

  def destroy
    @question = Question.find(params[:id])
   @question.destroy
   
    flash[:success]="削除しました"
    redirect_to current_user
  end
  
  private
  
  def question_params
    params.require(:question).permit(:content)
  end 
  
   
end 
