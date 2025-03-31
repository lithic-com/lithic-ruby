# typed: strong

module Lithic
  class SinglePage
    include Lithic::Type::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    attr_accessor :data

    sig { returns(T::Boolean) }
    attr_accessor :has_more

    sig { returns(String) }
    def inspect
    end
  end
end
