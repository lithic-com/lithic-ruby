# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#settle
    class ExternalPaymentSettleParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute progress_to
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo, nil]
      optional :progress_to, enum: -> { Lithic::ExternalPaymentSettleParams::ProgressTo }

      # @!method initialize(effective_date:, memo: nil, progress_to: nil, request_options: {})
      #   @param effective_date [Date]
      #   @param memo [String]
      #   @param progress_to [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module ProgressTo
        extend Lithic::Internal::Type::Enum

        SETTLED = :SETTLED
        RELEASED = :RELEASED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
