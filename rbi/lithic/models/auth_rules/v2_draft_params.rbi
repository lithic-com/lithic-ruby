# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2DraftParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        # Parameters for the Auth Rule
        sig do
          returns(
            T.nilable(
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters
              )
            )
          )
        end
        attr_accessor :parameters

        sig do
          params(
            parameters:
              T.nilable(
                T.any(
                  Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                  Lithic::AuthRules::VelocityLimitParams::OrHash,
                  Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::OrHash
                )
              ),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Parameters for the Auth Rule
          parameters: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              parameters:
                T.nilable(
                  T.any(
                    Lithic::AuthRules::ConditionalBlockParameters,
                    Lithic::AuthRules::VelocityLimitParams,
                    Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters
                  )
                ),
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters
              )
            end

          class MerchantLockParameters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

            # A list of merchant locks defining specific merchants or groups of merchants
            # (based on descriptors or IDs) that the lock applies to.
            sig do
              returns(
                T::Array[
                  Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::Merchant
                ]
              )
            end
            attr_accessor :merchants

            sig do
              params(
                merchants:
                  T::Array[
                    Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::Merchant::OrHash
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
                    T::Array[
                      Lithic::AuthRules::V2DraftParams::Parameters::MerchantLockParameters::Merchant
                    ]
                }
              )
            end
            def to_hash
            end

            class Merchant < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

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

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::V2DraftParams::Parameters::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
