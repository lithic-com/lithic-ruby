# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#settle
    class ExternalPaymentSettleParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute [r] memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!attribute [r] progress_to
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo, nil]
      optional :progress_to, enum: -> { Lithic::Models::ExternalPaymentSettleParams::ProgressTo }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo]
      #   attr_writer :progress_to

      # @!parse
      #   # @param effective_date [Date]
      #   # @param memo [String]
      #   # @param progress_to [Symbol, Lithic::Models::ExternalPaymentSettleParams::ProgressTo]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(effective_date:, memo: nil, progress_to: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      module ProgressTo
        extend Lithic::Internal::Type::Enum

        SETTLED = :SETTLED
        RELEASED = :RELEASED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
