# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#retrieve
    class ExternalPaymentRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute external_payment_token
      #
      #   @return [String]
      required :external_payment_token, String

      # @!method initialize(external_payment_token:, request_options: {})
      #   @param external_payment_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
