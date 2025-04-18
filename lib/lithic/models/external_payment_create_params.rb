# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#create
    class ExternalPaymentCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentCreateParams::Category]
      required :category, enum: -> { Lithic::Models::ExternalPaymentCreateParams::Category }

      # @!attribute effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute payment_type
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType]
      required :payment_type, enum: -> { Lithic::Models::ExternalPaymentCreateParams::PaymentType }

      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute progress_to
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo, nil]
      optional :progress_to, enum: -> { Lithic::Models::ExternalPaymentCreateParams::ProgressTo }

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(amount:, category:, effective_date:, financial_account_token:, payment_type:, token: nil, memo: nil, progress_to: nil, user_defined_id: nil, request_options: {})
      #   @param amount [Integer]
      #   @param category [Symbol, Lithic::Models::ExternalPaymentCreateParams::Category]
      #   @param effective_date [Date]
      #   @param financial_account_token [String]
      #   @param payment_type [Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType]
      #   @param token [String]
      #   @param memo [String]
      #   @param progress_to [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo]
      #   @param user_defined_id [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module Category
        extend Lithic::Internal::Type::Enum

        EXTERNAL_WIRE = :EXTERNAL_WIRE
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PaymentType
        extend Lithic::Internal::Type::Enum

        DEPOSIT = :DEPOSIT
        WITHDRAWAL = :WITHDRAWAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
