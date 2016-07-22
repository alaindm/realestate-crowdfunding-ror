class InvestmentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :new] 
  include ProjectsHelper
  def new
    @user = current_user if logged_in?
    @investment = current_user.investments.build
    unless params[:project_id] == nil
      @investment.project_id = params[:project_id]
    end
  end
  
  def create
    @investment = current_user.investments.build(investment_params)
    if @investment.save
      flash[:success] = "Reserva de investimento realizada!"
      redirect_to instrucoes_pos_reserva_path
    else
      render 'new'
    end
  end
  
  private

    def investment_params
      params.require(:investment).permit(:request_amount, :project_id, :user_id)
    end

end