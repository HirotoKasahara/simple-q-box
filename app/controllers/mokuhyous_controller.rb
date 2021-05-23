class MokuhyousController < ApplicationController
  def new
    @mokuhyou = current_user.mokuhyous.build
  end

  def create
    @mokuhyou = current_user.mokuhyous.build(mokuhyou_params)
    if @mokuhyou.save
      flash[:success]="投稿しました"
      redirect_to user_path(current_user)
    else
      flash[:danger]="投稿に失敗しました"
      render :new
    end 
  end

  def edit
  end

  def update
  end

private
  def mokuhyou_params 
     params.require(:mokuhyou).permit(:content)
  end 
  
  
end
