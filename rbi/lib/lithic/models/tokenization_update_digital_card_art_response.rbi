# typed: strong

module Lithic
  module Models
    class TokenizationUpdateDigitalCardArtResponse < Lithic::BaseModel
      sig { returns(T.nilable(Lithic::Models::Tokenization)) }
      def data
      end

      sig do
        params(_: T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: Lithic::Models::Tokenization).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({data: Lithic::Models::Tokenization}) }
      def to_hash
      end
    end
  end
end
