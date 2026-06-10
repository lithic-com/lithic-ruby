# typed: strong

module Lithic
  module Resources
    class TransactionMonitoring
      sig { returns(Lithic::Resources::TransactionMonitoring::Cases) }
      attr_reader :cases

      sig { returns(Lithic::Resources::TransactionMonitoring::Queues) }
      attr_reader :queues

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
