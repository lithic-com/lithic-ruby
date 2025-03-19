# typed: strong

module Lithic
  module Resources
    class Transactions
      class Events
        sig { returns(Lithic::Resources::Transactions::Events::EnhancedCommercialData) }
        def enhanced_commercial_data
        end

        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
