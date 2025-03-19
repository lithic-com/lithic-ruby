# typed: strong

module Lithic
  module Resources
    class Reports
      sig { returns(Lithic::Resources::Reports::Settlement) }
      def settlement
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
