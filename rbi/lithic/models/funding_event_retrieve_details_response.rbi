# typed: strong

module Lithic
  module Models
    class FundingEventRetrieveDetailsResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::FundingEventRetrieveDetailsResponse,
            Lithic::Internal::AnyHash
          )
        end

      # Unique token ID
      sig { returns(String) }
      attr_accessor :token

      # URL of the settlement details
      sig { returns(String) }
      attr_accessor :settlement_details_url

      # URL of the settlement summary
      sig { returns(String) }
      attr_accessor :settlement_summary_url

      sig do
        params(
          token: String,
          settlement_details_url: String,
          settlement_summary_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique token ID
        token:,
        # URL of the settlement details
        settlement_details_url:,
        # URL of the settlement summary
        settlement_summary_url:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            settlement_details_url: String,
            settlement_summary_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
