require "disposable/twin/property/hash"

module FinancialTransaction::Contract
  class Create < Reform::Form
  
    include Disposable::Twin::Property::Hash
  
    property :bank_id, :type => :integer

    property :content, field: :hash do
      property :date, :type => :date
      property :details, :type => :text
      property :debit, :type => :float
      property :credit, :type => :float
      property :balance, :type => :float
    end
  
    unnest :date, from: :content
    unnest :debit, from: :content
  
    validates :date, presence: true

  end
end