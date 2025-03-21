# typed: strong

module Lithic
  module Models
    class CardSearchByPanParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The PAN for the card being retrieved.
      sig { returns(String) }
      def pan
      end

      sig { params(_: String).returns(String) }
      def pan=(_)
      end

      sig do
        params(pan: String, request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(pan:, request_options: {})
      end

      sig { override.returns({pan: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
