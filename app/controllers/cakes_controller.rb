class CakesController < ApplicationController
    def create
    @sleep = current_user.cakes.build(cakes_params)
    if @sleep.save
      flash[:success]="saveしました"
      redirect_to user_path(current_user)
    else
      flash[:danger]="できませんでした"
      redirect_to root_path
    end 
  end
  
  def show
    @sleeps = current_user.cakes
   i = 0
   @sleeps.each do|sleep|
     @sleep_time = i += sleep.time / @sleeps.count
   end 
  
  end 
  private
  def cakes_params
    params.require(:cake).permit(:time,:try,:impression,:content)
  end 
end
