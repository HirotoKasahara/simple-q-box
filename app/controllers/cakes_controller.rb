class CakesController < ApplicationController
    def create
      @user = current_user
    @sleep = current_user.cakes.build(cakes_params)
    if @sleep.save
      flash[:success]="投稿しました"
      redirect_to cake_path(@user)
    else
      flash[:danger]="投稿できませんでした:投稿は１日一回までです。"
      redirect_to user_path(@user)
    end 
  end
  
  def show
    @sleeps = current_user.cakes
   i = 0
   @sleeps.each do|sleep|
     @sleep_time = i += sleep.time / @sleeps.count
   end 
   def edit
     @sleep = Cake.find(params[:id])
   end 
   
   
   def update
       @user = User.find_by(params[:question_id])
     @sleep = @user.cakes.find(params[:id])
     
     if @sleep.update(cakes_params)
       flash[:success]="編集しました"
       redirect_to cake_path(current_user)
     else
       flash.now[:danger]="編集できませんでした"
       render :edit
     end 
   end 
  
  end 
  private
  def cakes_params
    params.require(:cake).permit(:time,:try,:impression,:content)
  end 
 
end
