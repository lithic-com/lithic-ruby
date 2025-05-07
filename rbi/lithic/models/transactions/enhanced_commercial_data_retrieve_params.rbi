# typed: strong

module Lithic
  module Models
    module Transactions
      class EnhancedCommercialDataRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig do
          params(request_options: Lithic::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Lithic::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
