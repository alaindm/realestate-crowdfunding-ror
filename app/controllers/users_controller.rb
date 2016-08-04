class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  
  def new
    @user = User.new
  end
  
  def show
    # @user = User.find(params[:id])
    @user = current_user
    
  end
  
  def create
  if terms_checkbox_checked?
    @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = "Verifique sua caixa de e-mail com a mensagem do Imobank para ativar sua conta."
      redirect_to root_url
    else
      render 'new'
    end
  else
    @user = User.new(user_params)
    flash[:red] = "É necessário aceitar os termos do serviço do Imobank."
    render 'new'
  end
  end
  
  def edit
    # @user = User.find(params[:id])
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:green] = "Dados atualizados"
      redirect_to painel_de_controle_path
    else
      render 'edit'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :cpf)
    end


  # Confirms the correct user.
  def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
  end  
end
