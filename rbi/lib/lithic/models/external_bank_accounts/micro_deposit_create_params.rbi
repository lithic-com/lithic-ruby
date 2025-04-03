# typed: strong

module Lithic
  module Models
    module ExternalBankAccounts
      class MicroDepositCreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        sig { returns(T::Array[Integer]) }
        attr_accessor :micro_deposits

        sig do
          params(
            micro_deposits: T::Array[Integer],
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(micro_deposits:, request_options: {})
        end

        sig { override.returns({micro_deposits: T::Array[Integer], request_options: Lithic::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
