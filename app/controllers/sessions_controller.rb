class SessionsController < ApplicationController
  skip_before_action :is_allowed, only: [:new, :create]
  before_action :is_logged, only: [:create, :new]
  def new
  end

  def create
    @popo = Popo.find_by(email: params[:email])

    if @popo.nil?
      redirect_to login_path, alert: "Email e senha inválidos"
    else
      if @popo.password == params[:password]
        session[:popo_id] =  @popo.id
        redirect_to root_path, notice: "Bem vindo #{@popo.name}!"
      else
        redirect_to login_path, alert: "Email e senha inválidos"
      end
    end
  end


  def destroy
    session[:popo_id] = nil
    redirect_to login_path, notice: "Usuário deslogado com sucesso"
  end

  private
    def is_logged
      redirect_to root_path, alert: "vc já está logado" if session[:popo_id].present?
    end

end
