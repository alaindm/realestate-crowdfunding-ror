class InvestmentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :new] 
  
  def new
  end
  
  def create
  end
  
  private

    def investment_params
      params.require(:investment).permit(:content)
    end

end