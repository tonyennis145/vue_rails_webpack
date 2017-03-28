class CreateFinancialTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_transactions do |t|
      t.column :content, :json

      t.timestamps
    end
  end
end
