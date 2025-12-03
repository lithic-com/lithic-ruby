# typed: strong

module Lithic
  module Models
    class WalletDecisioningInfo < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::WalletDecisioningInfo, Lithic::Internal::AnyHash)
        end

      # Score given to the account by the Wallet Provider
      sig { returns(T.nilable(String)) }
      attr_accessor :account_score

      # Score given to the device by the Wallet Provider
      sig { returns(T.nilable(String)) }
      attr_accessor :device_score

      # The decision recommended by the Wallet Provider
      sig { returns(T.nilable(String)) }
      attr_accessor :recommended_decision

      # Reasons provided to the Wallet Provider on how the recommended decision was
      # reached
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :recommendation_reasons

      sig do
        params(
          account_score: T.nilable(String),
          device_score: T.nilable(String),
          recommended_decision: T.nilable(String),
          recommendation_reasons: T.nilable(T::Array[String])
        ).returns(T.attached_class)
      end
      def self.new(
        # Score given to the account by the Wallet Provider
        account_score:,
        # Score given to the device by the Wallet Provider
        device_score:,
        # The decision recommended by the Wallet Provider
        recommended_decision:,
        # Reasons provided to the Wallet Provider on how the recommended decision was
        # reached
        recommendation_reasons: nil
      )
      end

      sig do
        override.returns(
          {
            account_score: T.nilable(String),
            device_score: T.nilable(String),
            recommended_decision: T.nilable(String),
            recommendation_reasons: T.nilable(T::Array[String])
          }
        )
      end
      def to_hash
      end
    end
  end
end
