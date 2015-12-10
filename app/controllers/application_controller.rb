class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :is_allowed

  private
    def is_allowed
      redirect_to login_path, alert: "Você precisa estar logado para acessar esta página" if session[:popo_id].nil?
    end

end
