# typed: strong

module Lithic
  module Resources
    class AuthRules
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
