# frozen_string_literal: true

module Lithic
  module Models
    class ExternalPaymentCreateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

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

      # @!attribute [r] token
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!attribute [r] progress_to
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo, nil]
      optional :progress_to, enum: -> { Lithic::Models::ExternalPaymentCreateParams::ProgressTo }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo]
      #   attr_writer :progress_to

      # @!attribute [r] user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :user_defined_id

      # @!parse
      #   # @param amount [Integer]
      #   # @param category [Symbol, Lithic::Models::ExternalPaymentCreateParams::Category]
      #   # @param effective_date [Date]
      #   # @param financial_account_token [String]
      #   # @param payment_type [Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType]
      #   # @param token [String]
      #   # @param memo [String]
      #   # @param progress_to [Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo]
      #   # @param user_defined_id [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     category:,
      #     effective_date:,
      #     financial_account_token:,
      #     payment_type:,
      #     token: nil,
      #     memo: nil,
      #     progress_to: nil,
      #     user_defined_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      module Category
        extend Lithic::Enum

        EXTERNAL_WIRE = :EXTERNAL_WIRE
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module PaymentType
        extend Lithic::Enum

        DEPOSIT = :DEPOSIT
        WITHDRAWAL = :WITHDRAWAL

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module ProgressTo
        extend Lithic::Enum

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
