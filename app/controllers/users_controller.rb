class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    @questions = @user.questions
    @sleep = @user.cakes.build
   @m = current_user.mokuhyous.last
 
   @todays_sleep = @user.cakes.last(2)[0]
  
  end 

  def create
    @user = User.new(user_params)
    if @user.save
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
