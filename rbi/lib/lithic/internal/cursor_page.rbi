# typed: strong

module Lithic
  module Internal
    class CursorPage
      include Lithic::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(T::Boolean) }
      attr_accessor :has_more

      # @api private
      sig { returns(String) }
      def inspect; end
    end
  end
end
