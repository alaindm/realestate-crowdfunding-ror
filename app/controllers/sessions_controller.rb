class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        # redirect_back_or user
        redirect_back_or root_url
      else
        message  = "Conta não está ativa."
        message += "Verifique em sua caixa de e-mail a mensagem com o o link de ativação."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = 'E-mail inválido ou Senha incorreta' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end