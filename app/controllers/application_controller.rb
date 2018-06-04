class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 def current_user 
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
 end
 helper_method :current_user

 def authorize
    redirect_to '/log-in' unless current_user
 end

  def pageview
    Analytic.create :referrer   => request.referrer,
                    :ip_address => request.remote_ip,
                    :user_agent => request.env["HTTP_USER_AGENT"]
  end

end
