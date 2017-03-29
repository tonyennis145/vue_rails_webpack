require 'roar/decorator'
require 'roar/json'

module API::V1
  module FinancialTransaction
    module Representer
      class Show < Roar::Decorator

        include Roar::JSON
        property :content

      end
    end
  end
end