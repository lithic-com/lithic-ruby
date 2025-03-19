# typed: strong

module Lithic
  module Models
    class OwnerType < Lithic::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      INDIVIDUAL = :INDIVIDUAL
      BUSINESS = :BUSINESS
    end
  end
end
