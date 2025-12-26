# typed: strong

module Lithic
  module Models
    class TransferLimitListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::TransferLimitListParams, Lithic::Internal::AnyHash)
        end

      # Date for which to retrieve transfer limits (ISO 8601 format)
      sig { returns(T.nilable(Date)) }
      attr_reader :date

      sig { params(date: Date).void }
      attr_writer :date

      sig do
        params(
          date: Date,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Date for which to retrieve transfer limits (ISO 8601 format)
        date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { date: Date, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
