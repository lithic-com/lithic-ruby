# typed: strong

module Lithic
  module Models
    class Card < Lithic::Models::NonPCICard
      OrHash = T.type_alias { T.any(Lithic::Card, Lithic::Internal::AnyHash) }

      # Three or four digit CVV printed on the card. Amex cards use four digit CVVs
      sig { returns(T.nilable(String)) }
      attr_reader :cvv

      sig { params(cvv: String).void }
      attr_writer :cvv

      # Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
      # compliant to have PAN returned as a field in production. Please contact
      # https://support.lithic.com/ for questions.
      sig { returns(T.nilable(String)) }
      attr_reader :pan

      sig { params(pan: String).void }
      attr_writer :pan

      # Card details with potentially PCI sensitive information for Enterprise customers
      sig { params(cvv: String, pan: String).returns(T.attached_class) }
      def self.new(
        # Three or four digit CVV printed on the card. Amex cards use four digit CVVs
        cvv: nil,
        # Primary Account Number (PAN) (i.e. the card number). Customers must be PCI
        # compliant to have PAN returned as a field in production. Please contact
        # https://support.lithic.com/ for questions.
        pan: nil
      )
      end

      sig { override.returns({ cvv: String, pan: String }) }
      def to_hash
      end
    end
  end
end
