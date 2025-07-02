# typed: strong

module Lithic
  module Models
    module AuthRules
      class MerchantLockParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::MerchantLockParameters,
              Lithic::Internal::AnyHash
            )
          end

        # A list of merchant locks defining specific merchants or groups of merchants
        # (based on descriptors or IDs) that the lock applies to.
        sig do
          returns(T::Array[Lithic::AuthRules::MerchantLockParameters::Merchant])
        end
        attr_accessor :merchants

        sig do
          params(
            merchants:
              T::Array[
                Lithic::AuthRules::MerchantLockParameters::Merchant::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of merchant locks defining specific merchants or groups of merchants
          # (based on descriptors or IDs) that the lock applies to.
          merchants:
        )
        end

        sig do
          override.returns(
            {
              merchants:
                T::Array[Lithic::AuthRules::MerchantLockParameters::Merchant]
            }
          )
        end
        def to_hash
        end

        class Merchant < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::MerchantLockParameters::Merchant,
                Lithic::Internal::AnyHash
              )
            end

          # A comment or explanation about the merchant, used internally for rule management
          # purposes.
          sig { returns(T.nilable(String)) }
          attr_reader :comment

          sig { params(comment: String).void }
          attr_writer :comment

          # Short description of the merchant, often used to provide more human-readable
          # context about the transaction merchant. This is typically the name or label
          # shown on transaction summaries.
          sig { returns(T.nilable(String)) }
          attr_reader :descriptor

          sig { params(descriptor: String).void }
          attr_writer :descriptor

          # Unique alphanumeric identifier for the payment card acceptor (merchant). This
          # attribute specifies the merchant entity that will be locked or referenced for
          # authorization rules.
          sig { returns(T.nilable(String)) }
          attr_reader :merchant_id

          sig { params(merchant_id: String).void }
          attr_writer :merchant_id

          # Represents a specific merchant lock based on their ID or descriptor. Each
          # merchant object allows transaction rules to work at a granular level and
          # requires at least one of merchant_id or descriptor.
          sig do
            params(
              comment: String,
              descriptor: String,
              merchant_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # A comment or explanation about the merchant, used internally for rule management
            # purposes.
            comment: nil,
            # Short description of the merchant, often used to provide more human-readable
            # context about the transaction merchant. This is typically the name or label
            # shown on transaction summaries.
            descriptor: nil,
            # Unique alphanumeric identifier for the payment card acceptor (merchant). This
            # attribute specifies the merchant entity that will be locked or referenced for
            # authorization rules.
            merchant_id: nil
          )
          end

          sig do
            override.returns(
              { comment: String, descriptor: String, merchant_id: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
