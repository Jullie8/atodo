class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
    def log_in!(user)
        session[:user_id] = user.id
    end

# Returns current logged-in user (if any)
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # def is_client_logged_in?
  #   !!session[:customer_id]
  # end

  # helper_method :is_client_logged_in?

end
