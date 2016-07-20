class InvestmentFieldCorrection < ActiveRecord::Migration[5.0]
  def change
    rename_column :investments, :resquest_amount, :request_amount
  end
end
