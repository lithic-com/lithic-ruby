# typed: strong

module Lithic
  module Models
    class CardSearchByPanParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardSearchByPanParams, Lithic::Internal::AnyHash)
        end

      # The PAN for the card being retrieved.
      sig { returns(String) }
      attr_accessor :pan

      sig do
        params(
          pan: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The PAN for the card being retrieved.
        pan:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { pan: String, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
