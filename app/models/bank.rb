class Bank < ApplicationRecord
  has_many :financial_transactions
  serialize :content
end
