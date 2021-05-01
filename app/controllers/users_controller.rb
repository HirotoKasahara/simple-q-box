class UsersController < ApplicationController
  	before_action :requier_user_logged_in, only: [:show]
  def new
    @user = User.new
  end
  def show
    @questions = current_user.questions
    
  end 

  def create
    @user = User.new(user_params)
    
    if @user.save
      InquiryMailer.send_mail(@user).deliver_now
      flash[:success]="登録できました"
      redirect_to login_path
    else
      flash.now[:danger]="登録できませんでした"
      render :new
    end 
  end
  
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end 

   
end
