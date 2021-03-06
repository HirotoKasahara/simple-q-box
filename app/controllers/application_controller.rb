class ApplicationController < ActionController::Base
    
 private
     def current_user
       @current_user ||=User.find_by(id: session[:user_id])
     end 
  
     def logged_in?
       !!current_user
     end 
    
     def requier_user_logged_in
       unless logged_in?
         redirect_to root_url
       end 
     end  
    
end
