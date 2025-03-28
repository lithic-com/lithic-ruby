# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class V2ReportResponse < Lithic::BaseModel
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

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
