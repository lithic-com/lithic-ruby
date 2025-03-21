# typed: strong

module Lithic
  module Models
    class TokenizationUpdateDigitalCardArtResponse < Lithic::BaseModel
      sig { returns(T.nilable(Lithic::Models::Tokenization)) }
      attr_reader :data

      sig { params(data: T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash)).void }
      attr_writer :data

      sig { params(data: T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash)).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({data: Lithic::Models::Tokenization}) }
      def to_hash
      end
    end
  end
end
