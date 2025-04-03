# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#report
      class V2ReportResponse < Lithic::Internal::Type::BaseModel
        # @!attribute [r] report_token
        #
        #   @return [String, nil]
        optional :report_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :report_token

        # @!parse
        #   # @param report_token [String]
        #   #
        #   def initialize(report_token: nil, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
