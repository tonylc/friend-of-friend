class UserController < ApplicationController
  def index
    if request.post?
      user_1 = User.new(:id => params[:friend_1].to_i)
      user_2 = User.new(:id => params[:friend_2].to_i)
    
      @result = user_service.is_friend_of_friend?(user_1, user_2)
    
      render :index
    end
  end
end