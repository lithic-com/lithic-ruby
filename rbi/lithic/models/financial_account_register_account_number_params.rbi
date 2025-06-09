# typed: strong

module Lithic
  module Models
    class FinancialAccountRegisterAccountNumberParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::FinancialAccountRegisterAccountNumberParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_number

      sig do
        params(
          account_number: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(account_number:, request_options: {})
      end

      sig do
        override.returns(
          { account_number: String, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
