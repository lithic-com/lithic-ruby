# frozen_string_literal: true

module Lithic
  module Models
    class PaymentSimulateReturnParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute payment_token
      #   Payment Token
      #
      #   @return [String]
      required :payment_token, String

      # @!attribute [r] return_reason_code
      #   Return Reason Code
      #
      #   @return [String, nil]
      optional :return_reason_code, String

      # @!parse
      #   # @return [String]
      #   attr_writer :return_reason_code

      # @!parse
      #   # @param payment_token [String]
      #   # @param return_reason_code [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(payment_token:, return_reason_code: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
