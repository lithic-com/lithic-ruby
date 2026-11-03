# typed: strong

module Lithic
  module Models
    class TokenizationSelectTfaMethodResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::TokenizationSelectTfaMethodResponse,
            Lithic::Internal::AnyHash
          )
        end

      # Whether the card network accepted the authentication method selection
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig { params(success: T::Boolean).returns(T.attached_class) }
      def self.new(
        # Whether the card network accepted the authentication method selection
        success:
      )
      end

      sig { override.returns({ success: T::Boolean }) }
      def to_hash
      end
    end
  end
end
