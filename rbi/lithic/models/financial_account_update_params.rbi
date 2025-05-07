# typed: strong

module Lithic
  module Models
    class FinancialAccountUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :nickname

      sig { params(nickname: String).void }
      attr_writer :nickname

      sig do
        params(
          nickname: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(nickname: nil, request_options: {})
      end

      sig do
        override.returns(
          { nickname: String, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
