# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#simulate_release
    class PaymentSimulateReleaseParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

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
