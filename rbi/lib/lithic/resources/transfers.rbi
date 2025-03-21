# typed: strong

module Lithic
  module Resources
    class Transfers
      # Transfer funds between two financial accounts or between a financial account and
      #   card
      sig do
        params(
          amount: Integer,
          from: String,
          to: String,
          token: String,
          memo: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
        )
          .returns(Lithic::Models::Transfer)
      end
      def create(
        # Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
        #   This should always be a positive value.
        amount:,
        # Globally unique identifier for the financial account or card that will send the
        #   funds. Accepted type dependent on the program's use case.
        from:,
        # Globally unique identifier for the financial account or card that will receive
        #   the funds. Accepted type dependent on the program's use case.
        to:,
        # Customer-provided token that will serve as an idempotency token. This token will
        #   become the transaction token.
        token: nil,
        # Optional descriptor for the transfer.
        memo: nil,
        request_options: {}
      )
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
