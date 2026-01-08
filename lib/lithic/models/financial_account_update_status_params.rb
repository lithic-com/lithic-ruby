# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#update_status
    class FinancialAccountUpdateStatusParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute status
      #   Status of the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status]
      required :status, enum: -> { Lithic::FinancialAccountUpdateStatusParams::Status }

      # @!attribute substatus
      #   Substatus for the financial account
      #
      #   @return [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus, nil]
      required :substatus, enum: -> { Lithic::FinancialAccountUpdateStatusParams::Substatus }, nil?: true

      # @!attribute user_defined_status
      #   User-defined status for the financial account
      #
      #   @return [String, nil]
      optional :user_defined_status, String

      # @!method initialize(status:, substatus:, user_defined_status: nil, request_options: {})
      #   @param status [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status] Status of the financial account
      #
      #   @param substatus [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus, nil] Substatus for the financial account
      #
      #   @param user_defined_status [String] User-defined status for the financial account
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Status of the financial account
      module Status
        extend Lithic::Internal::Type::Enum

        OPEN = :OPEN
        CLOSED = :CLOSED
        SUSPENDED = :SUSPENDED
        PENDING = :PENDING

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Substatus for the financial account
      module Substatus
        extend Lithic::Internal::Type::Enum

        CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
        END_USER_REQUEST = :END_USER_REQUEST
        BANK_REQUEST = :BANK_REQUEST
        CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
