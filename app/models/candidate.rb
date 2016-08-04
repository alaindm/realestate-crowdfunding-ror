class Candidate < ApplicationRecord
  before_save { self.email = email.downcase }    
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :phone,  presence: true
  validates :description,  presence: true, length: { maximum: 5000 }
  # validates :terms_of_service, acceptance: true, message: 'É necessário aceitar os Termos do Serviço'

end
