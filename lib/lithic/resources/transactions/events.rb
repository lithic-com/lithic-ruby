# frozen_string_literal: true

module Lithic
  module Resources
    class Transactions
      class Events
        # @return [Lithic::Resources::Transactions::Events::EnhancedCommercialData]
        attr_reader :enhanced_commercial_data

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
          @enhanced_commercial_data =
            Lithic::Resources::Transactions::Events::EnhancedCommercialData.new(client: client)
        end
      end
    end
  end
end
