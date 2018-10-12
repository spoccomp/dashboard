class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    helper_method :current_user
    def current_user
        # Look up the current user based on user_id in the session cookie:
        @current_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
      end
      def authorize
        redirect_to login_path, alert: 'You must be logged in to access this page.' if current_user.nil?
      end
      
end
