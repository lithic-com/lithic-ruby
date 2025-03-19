# typed: strong

module Lithic
  module Resources
    class ThreeDS
      sig { returns(Lithic::Resources::ThreeDS::Authentication) }
      def authentication
      end

      sig { returns(Lithic::Resources::ThreeDS::Decisioning) }
      def decisioning
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
