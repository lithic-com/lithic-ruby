# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#report
      class V2ReportResponse < Lithic::Internal::Type::BaseModel
        # @!attribute report_token
        #
        #   @return [String, nil]
        optional :report_token, String

        # @!method initialize(report_token: nil)
        #   @param report_token [String]
      end
    end
  end
end
