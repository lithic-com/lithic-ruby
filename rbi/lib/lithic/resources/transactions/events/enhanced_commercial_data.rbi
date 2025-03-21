# typed: strong

module Lithic
  module Resources
    class Transactions
      class Events
        class EnhancedCommercialData
          # Get L2/L3 enhanced commercial data associated with a transaction event. Not
          #   available in sandbox.
          sig do
            params(
              event_token: String,
              request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
            )
              .returns(Lithic::Models::Transactions::Events::EnhancedData)
          end
          def retrieve(
            # The token of the transaction event that the enhanced data is associated with.
            event_token,
            request_options: {}
          )
          end

          sig { params(client: Lithic::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
