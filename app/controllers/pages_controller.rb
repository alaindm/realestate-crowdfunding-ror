class PagesController < ApplicationController
  before_action :logged_in_user, only: [:control_panel] 
  
  def home
  end

  def imobank
  end
  
  def control_panel
    if logged_in?
      @user = current_user
      @investment_list = @user.investments
    end
  end
end
