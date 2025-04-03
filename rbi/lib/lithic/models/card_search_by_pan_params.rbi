# typed: strong

module Lithic
  module Models
    class CardSearchByPanParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # The PAN for the card being retrieved.
      sig { returns(String) }
      attr_accessor :pan

      sig do
        params(pan: String, request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(pan:, request_options: {})
      end

      sig { override.returns({pan: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
