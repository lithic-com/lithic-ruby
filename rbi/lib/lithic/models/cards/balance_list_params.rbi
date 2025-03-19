# typed: strong

module Lithic
  module Models
    module Cards
      class BalanceListParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # UTC date of the balance to retrieve. Defaults to latest available balance
        sig { returns(T.nilable(Time)) }
        def balance_date
        end

        sig { params(_: Time).returns(Time) }
        def balance_date=(_)
        end

        # Balance after a given financial event occured. For example, passing the
        #   event_token of a $5 CARD_CLEARING financial event will return a balance
        #   decreased by $5
        sig { returns(T.nilable(String)) }
        def last_transaction_event_token
        end

        sig { params(_: String).returns(String) }
        def last_transaction_event_token=(_)
        end

        sig do
          params(
            balance_date: Time,
            last_transaction_event_token: String,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(balance_date: nil, last_transaction_event_token: nil, request_options: {})
        end

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
        def to_hash
        end
      end
    end
  end
end
