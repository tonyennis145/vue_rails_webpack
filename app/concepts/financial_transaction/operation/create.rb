class FinancialTransaction::Create < Trailblazer::Operation
  
  step Model( FinancialTransaction, :new )
  step Contract::Build( constant: FinancialTransaction::Contract::Create )
  step Contract::Validate()
  step Contract::Persist()

end