# typed: strong

module Lithic
  module Models
    class TokenizationPauseParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig do
        params(request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
