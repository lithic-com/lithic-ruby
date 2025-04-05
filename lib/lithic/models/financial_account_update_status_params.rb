# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#update_status
    class FinancialAccountUpdateStatusParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute status
      #   Status of the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status]
      required :status, enum: -> { Lithic::Models::FinancialAccountUpdateStatusParams::Status }

      # @!attribute substatus
      #   Substatus for the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus, nil]
      required :substatus,
               enum: -> { Lithic::Models::FinancialAccountUpdateStatusParams::Substatus },
               nil?: true

      # @!parse
      #   # @param status [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status]
      #   # @param substatus [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus, nil]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(status:, substatus:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # Status of the financial account
      module Status
        extend Lithic::Internal::Type::Enum

        OPEN = :OPEN
        CLOSED = :CLOSED
        SUSPENDED = :SUSPENDED
        PENDING = :PENDING

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Substatus for the financial account
      module Substatus
        extend Lithic::Internal::Type::Enum

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
