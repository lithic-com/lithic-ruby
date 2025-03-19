# typed: strong

module Lithic
  module Models
    class FinancialAccountListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # List financial accounts for a given account_token or business_account_token
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # List financial accounts for a given business_account_token
      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # List financial accounts of a given type
      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          account_token: String,
          business_account_token: String,
          type: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_token: nil, business_account_token: nil, type: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              account_token: String,
              business_account_token: String,
              type: Symbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # List financial accounts of a given type
      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE
      end
    end
  end
end
