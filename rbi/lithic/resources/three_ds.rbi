# typed: strong

module Lithic
  module Resources
    class ThreeDS
      sig { returns(Lithic::Resources::ThreeDS::Authentication) }
      attr_reader :authentication

      sig { returns(Lithic::Resources::ThreeDS::Decisioning) }
      attr_reader :decisioning

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
