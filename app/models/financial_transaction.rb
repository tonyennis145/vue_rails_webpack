class FinancialTransaction < ApplicationRecord
  belongs_to :bank
  serialize :content
end