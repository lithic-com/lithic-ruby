# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#reverse
    class ExternalPaymentReverseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute external_payment_token
      #
      #   @return [String]
      required :external_payment_token, String

      # @!attribute effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!method initialize(external_payment_token:, effective_date:, memo: nil, request_options: {})
      #   @param external_payment_token [String]
      #   @param effective_date [Date]
      #   @param memo [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
