module Api::V1
  module FinancialTransaction
    class Show < Trailblazer::Operation
      include Model

      include Trailblazer::Operation::Representer

      def process(*)
      end
    end

  end
end