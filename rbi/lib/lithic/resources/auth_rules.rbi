# typed: strong

module Lithic
  module Resources
    class AuthRules
      sig { returns(Lithic::Resources::AuthRules::V2) }
      def v2
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
