# frozen_string_literal: true

module Lithic
  module Models
    class PaymentSimulateReleaseParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute payment_token
      #   Payment Token
      #
      #   @return [String]
      required :payment_token, String

      # @!parse
      #   # @param payment_token [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(payment_token:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
