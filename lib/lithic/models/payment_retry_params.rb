# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#retry_
    class PaymentRetryParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute payment_token
      #
      #   @return [String]
      required :payment_token, String

      # @!attribute method_
      #   Settlement speed to retry the payment at. Defaults to the original payment's
      #   method. An `ACH_SAME_DAY` retry is rejected if the payment is for $1,000,000.00
      #   or more, or if it is submitted after the same day ACH cutoff
      #
      #   @return [Symbol, Lithic::Models::PaymentRetryParams::Method, nil]
      optional :method_, enum: -> { Lithic::PaymentRetryParams::Method }, api_name: :method

      # @!method initialize(payment_token:, method_: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::PaymentRetryParams} for more details.
      #
      #   @param payment_token [String]
      #
      #   @param method_ [Symbol, Lithic::Models::PaymentRetryParams::Method] Settlement speed to retry the payment at. Defaults to the original payment's met
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Settlement speed to retry the payment at. Defaults to the original payment's
      # method. An `ACH_SAME_DAY` retry is rejected if the payment is for $1,000,000.00
      # or more, or if it is submitted after the same day ACH cutoff
      module Method
        extend Lithic::Internal::Type::Enum

        ACH_NEXT_DAY = :ACH_NEXT_DAY
        ACH_SAME_DAY = :ACH_SAME_DAY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
