# typed: strong

module Lithic
  module Internal
    class SinglePage
      Elem = type_member

      include Lithic::Internal::Type::BasePage

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(T::Boolean) }
      attr_accessor :has_more

      sig { returns(String) }
      def inspect
      end
    end
  end
end
