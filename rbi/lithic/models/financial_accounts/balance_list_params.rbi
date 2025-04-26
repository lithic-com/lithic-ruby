# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class BalanceListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # UTC date of the balance to retrieve. Defaults to latest available balance
        sig { returns(T.nilable(Time)) }
        attr_reader :balance_date

        sig { params(balance_date: Time).void }
        attr_writer :balance_date

        # Balance after a given financial event occured. For example, passing the
        # event_token of a $5 CARD_CLEARING financial event will return a balance
        # decreased by $5
        sig { returns(T.nilable(String)) }
        attr_reader :last_transaction_event_token

        sig { params(last_transaction_event_token: String).void }
        attr_writer :last_transaction_event_token

        sig do
          params(
            balance_date: Time,
            last_transaction_event_token: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # UTC date of the balance to retrieve. Defaults to latest available balance
          balance_date: nil,
          # Balance after a given financial event occured. For example, passing the
          # event_token of a $5 CARD_CLEARING financial event will return a balance
          # decreased by $5
          last_transaction_event_token: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                balance_date: Time,
                last_transaction_event_token: String,
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
