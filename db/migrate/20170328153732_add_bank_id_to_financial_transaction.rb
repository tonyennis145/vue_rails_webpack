class AddBankIdToFinancialTransaction < ActiveRecord::Migration[5.0]
  def change
    add_column :financial_transactions, :bank_id, :integer
  end
end
