class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  default_scope -> { order(created_at: :desc) } # plus order(project_id: :desc)
  validates :user_id, presence: true
  validates :project_id, presence: true
  validates :request_amount, presence: true # maximum and minimum

end
