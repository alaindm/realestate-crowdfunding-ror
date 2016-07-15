class CandidatesController < ApplicationController

  def new
    @candidate = Candidate.new
  end
  
  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      flash[:info] = "Proposta de projeto enviada para análise. Em breve entraremos em contato. Obrigado."
      redirect_to root_url # redirecionar para levantar capital
    else
      render 'new'
    end
  end
  
  private
    def candidate_params
      params.require(:candidate).permit(:name, :email, :phone, :description, :company)
    end
  
end
