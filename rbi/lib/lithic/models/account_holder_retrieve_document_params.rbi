# typed: strong

module Lithic
  module Models
    class AccountHolderRetrieveDocumentParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(String) }
      def account_holder_token
      end

      sig { params(_: String).returns(String) }
      def account_holder_token=(_)
      end

      sig do
        params(
          account_holder_token: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(account_holder_token:, request_options: {})
      end

      sig { override.returns({account_holder_token: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
