# typed: strong

module Lithic
  module Models
    class TokenizationUpdateDigitalCardArtResponse < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      sig { returns(T.nilable(Lithic::Tokenization)) }
      attr_reader :data

      sig { params(data: Lithic::Tokenization::OrHash).void }
      attr_writer :data

      sig do
        params(data: Lithic::Tokenization::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Lithic::Tokenization }) }
      def to_hash
      end
    end
  end
end
