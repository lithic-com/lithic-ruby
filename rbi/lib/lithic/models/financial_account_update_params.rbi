# typed: strong

module Lithic
  module Models
    class FinancialAccountUpdateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :nickname

      sig { params(nickname: String).void }
      attr_writer :nickname

      sig do
        params(nickname: String, request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(nickname: nil, request_options: {})
      end

      sig { override.returns({nickname: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
