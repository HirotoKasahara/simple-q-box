class QuestionsController < ApplicationController
  def new
    @question = current_user.questions.build
  end
  def show
    @question = Question.find(params[:id])
    @answer = @question.answers.build
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
    
  end
  
  private
  
  def question_params
    params.require(:question).permit(:content)
  end 
  
end 
