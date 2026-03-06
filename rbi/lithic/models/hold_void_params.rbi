# typed: strong

module Lithic
  module Models
    class HoldVoidParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::HoldVoidParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :hold_token

      # Reason for voiding the hold
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      sig do
        params(
          hold_token: String,
          memo: T.nilable(String),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        hold_token:,
        # Reason for voiding the hold
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            hold_token: String,
            memo: T.nilable(String),
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
