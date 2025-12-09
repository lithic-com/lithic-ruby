# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # The event stream during which the rule will be evaluated.
      module EventStream
        extend Lithic::Internal::Type::Enum

        AUTHORIZATION = :AUTHORIZATION
        THREE_DS_AUTHENTICATION = :THREE_DS_AUTHENTICATION
        TOKENIZATION = :TOKENIZATION
        ACH_CREDIT_RECEIPT = :ACH_CREDIT_RECEIPT
        ACH_DEBIT_RECEIPT = :ACH_DEBIT_RECEIPT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
