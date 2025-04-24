# typed: strong

module Lithic
  module Models
    class Card < Lithic::Models::NonPCICard
      # Three digit cvv printed on the back of the card.
      sig { returns(T.nilable(String)) }
      attr_reader :cvv

      sig { params(cvv: String).void }
      attr_writer :cvv

      # Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
      # compliant to have PAN returned as a field in production. Please contact
      # support@lithic.com for questions.
      sig { returns(T.nilable(String)) }
      attr_reader :pan

      sig { params(pan: String).void }
      attr_writer :pan

      # Card details with potentially PCI sensitive information for Enterprise customers
      sig { params(cvv: String, pan: String).returns(T.attached_class) }
      def self.new(
        # Three digit cvv printed on the back of the card.
        cvv: nil,
        # Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
        # compliant to have PAN returned as a field in production. Please contact
        # support@lithic.com for questions.
        pan: nil
      ); end
      sig { override.returns({cvv: String, pan: String}) }
      def to_hash; end
    end
  end
end
