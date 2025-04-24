# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#simulate_return
    class PaymentSimulateReturnParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute payment_token
      #   Payment Token
      #
      #   @return [String]
      required :payment_token, String

      # @!attribute return_reason_code
      #   Return Reason Code
      #
      #   @return [String, nil]
      optional :return_reason_code, String

      # @!method initialize(payment_token:, return_reason_code: nil, request_options: {})
      #   @param payment_token [String] Payment Token
      #
      #   @param return_reason_code [String] Return Reason Code
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
