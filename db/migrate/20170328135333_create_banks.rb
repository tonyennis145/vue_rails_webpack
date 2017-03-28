class CreateBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :banks do |t|
      t.column :content, :json

      t.timestamps
    end
  end
end
