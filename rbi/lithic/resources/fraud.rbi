# typed: strong

module Lithic
  module Resources
    class Fraud
      sig { returns(Lithic::Resources::Fraud::Transactions) }
      attr_reader :transactions

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
