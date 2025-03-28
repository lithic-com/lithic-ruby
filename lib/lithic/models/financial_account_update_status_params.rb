# frozen_string_literal: true

module Lithic
  module Models
    class FinancialAccountUpdateStatusParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute status
      #   Status of the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status]
      required :status, enum: -> { Lithic::Models::FinancialAccountUpdateStatusParams::Status }

      # @!attribute status_change_reason
      #   Reason for the financial account status change
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason, nil]
      required :status_change_reason,
               enum: -> { Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason },
               nil?: true

      # @!parse
      #   # @param status [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status]
      #   # @param status_change_reason [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason, nil]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(status:, status_change_reason:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Status of the financial account
      module Status
        extend Lithic::Enum

        OPEN = :OPEN
        CLOSED = :CLOSED
        SUSPENDED = :SUSPENDED
        PENDING = :PENDING

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Reason for the financial account status change
      module StatusChangeReason
        extend Lithic::Enum

        CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
        END_USER_REQUEST = :END_USER_REQUEST
        BANK_REQUEST = :BANK_REQUEST
        CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
