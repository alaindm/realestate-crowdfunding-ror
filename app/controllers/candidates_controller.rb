class CandidatesController < ApplicationController

  def new
    @candidate = Candidate.new
  end
  
  def create
    if terms_checkbox_checked?
      @candidate = Candidate.new(candidate_params)
      if @candidate.save
        flash[:blue] = "Proposta de projeto enviada para análise. Em breve entraremos em contato. Obrigado."
        redirect_to como_funciona_para_o_investidor_url 
      else
        render 'new'
      end
    else
      @candidate = Candidate.new(candidate_params)
      flash[:red] = "É necessário aceitar os termos do serviço do Imobank."
      render 'new'
    end
  end
  
  private
    def candidate_params
      params.require(:candidate).permit(:name, :email, :phone, :description, :company)
    end

end