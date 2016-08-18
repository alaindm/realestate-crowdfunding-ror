class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      user.update_attribute(:activated_at, Time.zone.now)
      log_in user
      flash[:green] = "Conta Ativada! Este é o seu Painel de Controle de Investimentos."
      redirect_to painel_de_controle
    else
      flash[:red] = "Link de ativação de conta inválido"
      redirect_to root_url
    end
  end
end
