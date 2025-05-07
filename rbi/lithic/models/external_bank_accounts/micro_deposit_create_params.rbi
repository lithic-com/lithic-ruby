# typed: strong

module Lithic
  module Models
    module ExternalBankAccounts
      class MicroDepositCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig { returns(T::Array[Integer]) }
        attr_accessor :micro_deposits

        sig do
          params(
            micro_deposits: T::Array[Integer],
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(micro_deposits:, request_options: {})
        end

        sig do
          override.returns(
            {
              micro_deposits: T::Array[Integer],
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
