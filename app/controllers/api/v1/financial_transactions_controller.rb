module Api::V1
  class FinancialTransactionsController < ApplicationController
  
    respond_to :json
    
    def show
      respond FinancialTransaction::Show
    end

  end
end