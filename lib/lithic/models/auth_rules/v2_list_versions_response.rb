# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#list_versions
      class V2ListVersionsResponse < Lithic::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleVersion>]
        required :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::AuthRuleVersion] }

        # @!method initialize(data:)
        #   @param data [Array<Lithic::Models::AuthRules::AuthRuleVersion>]
      end
    end
  end
end
