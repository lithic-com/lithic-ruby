# typed: strong

module Lithic
  module Models
    module AuthRules
      # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
      module ConditionalValue
        extend Lithic::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Integer, T::Array[String]) }

        sig do
          override.returns(
            T::Array[Lithic::AuthRules::ConditionalValue::Variants]
          )
        end
        def self.variants
        end

        StringArray =
          T.let(
            Lithic::Internal::Type::ArrayOf[String],
            Lithic::Internal::Type::Converter
          )
      end
    end
  end
end
