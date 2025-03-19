# typed: strong

module Lithic
  module Models
    module ExternalBankAccounts
      class MicroDepositCreateParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        sig { returns(T::Array[Integer]) }
        def micro_deposits
        end

        sig { params(_: T::Array[Integer]).returns(T::Array[Integer]) }
        def micro_deposits=(_)
        end

        sig do
          params(
            micro_deposits: T::Array[Integer],
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
