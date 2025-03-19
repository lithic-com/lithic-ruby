# typed: strong

module Lithic
  module Models
    class ExternalBankAccountRetryMicroDepositsParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(T.nilable(String)) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig do
        params(
          financial_account_token: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(financial_account_token: nil, request_options: {})
      end

      sig { override.returns({financial_account_token: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
