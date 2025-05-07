# typed: strong

module Lithic
  module Resources
    class AggregateBalances
      # Get the aggregated balance across all end-user accounts by financial account
      # type
      sig do
        params(
          financial_account_type:
            Lithic::AggregateBalanceListParams::FinancialAccountType::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::SinglePage[Lithic::AggregateBalance])
      end
      def list(
        # Get the aggregate balance for a given Financial Account type.
        financial_account_type: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
