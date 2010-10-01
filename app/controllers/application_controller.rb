# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  before_filter :start_run_time
  before_filter :validate_friends

  protected
  
  def user_service
    UserService.new
  end
  
  private
  
  def validate_friends
    if request.post?
      unless (1..4).include?(params[:friend_1].to_i) && (1..4).include?(params[:friend_2].to_i)
        @error = "Invalid User IDs"
        render :index and return
      end
    end
  end
  
  def start_run_time
    @start_time = Time.now
  end
  
  def render(*args, &block)
    @difference = Time.now - @start_time
    super
  end
end
