# frozen_string_literal: true

module Lithic
  module Models
    # Response containing multiple transaction types
    #
    # @see Lithic::Resources::AccountActivity#retrieve_transaction
    module AccountActivityRetrieveTransactionResponse
      extend Lithic::Internal::Type::Union

      # Financial transaction with inheritance from unified base transaction
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction }

      # Book transfer transaction
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction }

      # Base class for all transaction types in the ledger service
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction }

      # Payment transaction
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction }

      variant -> { Lithic::ExternalPayment }

      variant -> { Lithic::ManagementOperationTransaction }

      class FinancialTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute category
        #   Transaction category
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category]
        required :category,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category }

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute currency
        #   Currency of the transaction, represented in ISO 4217 format
        #
        #   @return [String]
        required :currency, String

        # @!attribute descriptor
        #   Transaction descriptor
        #
        #   @return [String]
        required :descriptor, String

        # @!attribute events
        #   List of transaction events
        #
        #   @return [Array<Object>]
        required :events, Lithic::Internal::Type::ArrayOf[Lithic::Internal::Type::Unknown]

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family }

        # @!attribute financial_account_token
        #   Financial account token associated with the transaction
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute pending_amount
        #   Pending amount in cents
        #
        #   @return [Integer]
        required :pending_amount, Integer

        # @!attribute result
        #   Transaction result
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result]
        required :result,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result }

        # @!attribute settled_amount
        #   Settled amount in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, category:, created:, currency:, descriptor:, events:, family:, financial_account_token:, pending_amount:, result:, settled_amount:, status:, updated:)
        #   Financial transaction with inheritance from unified base transaction
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param category [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category] Transaction category
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param currency [String] Currency of the transaction, represented in ISO 4217 format
        #
        #   @param descriptor [String] Transaction descriptor
        #
        #   @param events [Array<Object>] List of transaction events
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family]
        #
        #   @param financial_account_token [String] Financial account token associated with the transaction
        #
        #   @param pending_amount [Integer] Pending amount in cents
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result] Transaction result
        #
        #   @param settled_amount [Integer] Settled amount in cents
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated

        # Transaction category
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#category
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
          CARD = :CARD
          EXTERNAL_ACH = :EXTERNAL_ACH
          EXTERNAL_CHECK = :EXTERNAL_CHECK
          EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
          EXTERNAL_WIRE = :EXTERNAL_WIRE
          MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
          MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
          MANAGEMENT_FEE = :MANAGEMENT_FEE
          MANAGEMENT_REWARD = :MANAGEMENT_REWARD
          MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT
          PROGRAM_FUNDING = :PROGRAM_FUNDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#family
        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Transaction result
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#status
        module Status
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          SETTLED = :SETTLED
          DECLINED = :DECLINED
          REVERSED = :REVERSED
          CANCELED = :CANCELED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class BookTransferTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute category
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category]
        required :category,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category }

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute currency
        #   Currency of the transaction in ISO 4217 format
        #
        #   @return [String]
        required :currency, String

        # @!attribute events
        #   List of events associated with this book transfer
        #
        #   @return [Array<Object>]
        required :events, Lithic::Internal::Type::ArrayOf[Lithic::Internal::Type::Unknown]

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family }

        # @!attribute from_financial_account_token
        #   Source account token
        #
        #   @return [String]
        required :from_financial_account_token, String

        # @!attribute pending_amount
        #   The pending amount of the transaction in cents
        #
        #   @return [Integer]
        required :pending_amount, Integer

        # @!attribute result
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result]
        required :result,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result }

        # @!attribute settled_amount
        #   The settled amount of the transaction in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status }

        # @!attribute to_financial_account_token
        #   Destination account token
        #
        #   @return [String]
        required :to_financial_account_token, String

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute external_id
        #   External identifier for the transaction
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute external_resource
        #   External resource associated with the management operation
        #
        #   @return [Lithic::Models::ExternalResource, nil]
        optional :external_resource, -> { Lithic::ExternalResource }, nil?: true

        # @!attribute transaction_series
        #
        #   @return [Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries, nil]
        optional :transaction_series,
                 -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries },
                 nil?: true

        # @!method initialize(token:, category:, created:, currency:, events:, family:, from_financial_account_token:, pending_amount:, result:, settled_amount:, status:, to_financial_account_token:, updated:, external_id: nil, external_resource: nil, transaction_series: nil)
        #   Book transfer transaction
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param category [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category]
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param currency [String] Currency of the transaction in ISO 4217 format
        #
        #   @param events [Array<Object>] List of events associated with this book transfer
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family]
        #
        #   @param from_financial_account_token [String] Source account token
        #
        #   @param pending_amount [Integer] The pending amount of the transaction in cents
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result]
        #
        #   @param settled_amount [Integer] The settled amount of the transaction in cents
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status] The status of the transaction
        #
        #   @param to_financial_account_token [String] Destination account token
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
        #
        #   @param external_id [String] External identifier for the transaction
        #
        #   @param external_resource [Lithic::Models::ExternalResource, nil] External resource associated with the management operation
        #
        #   @param transaction_series [Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries, nil]

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#category
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
          CARD = :CARD
          EXTERNAL_ACH = :EXTERNAL_ACH
          EXTERNAL_CHECK = :EXTERNAL_CHECK
          EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
          EXTERNAL_WIRE = :EXTERNAL_WIRE
          MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
          MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
          MANAGEMENT_FEE = :MANAGEMENT_FEE
          MANAGEMENT_REWARD = :MANAGEMENT_REWARD
          MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT
          PROGRAM_FUNDING = :PROGRAM_FUNDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#family
        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#status
        module Status
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          SETTLED = :SETTLED
          DECLINED = :DECLINED
          REVERSED = :REVERSED
          CANCELED = :CANCELED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#transaction_series
        class TransactionSeries < Lithic::Internal::Type::BaseModel
          # @!attribute related_transaction_event_token
          #
          #   @return [String, nil]
          required :related_transaction_event_token, String, nil?: true

          # @!attribute related_transaction_token
          #
          #   @return [String, nil]
          required :related_transaction_token, String, nil?: true

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(related_transaction_event_token:, related_transaction_token:, type:)
          #   @param related_transaction_event_token [String, nil]
          #   @param related_transaction_token [String, nil]
          #   @param type [String]
        end
      end

      class CardTransaction < Lithic::Models::Transaction
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family }

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, created:, family:, status:, updated:)
        #   Base class for all transaction types in the ledger service
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family]
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated

        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        module Status
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          SETTLED = :SETTLED
          DECLINED = :DECLINED
          REVERSED = :REVERSED
          CANCELED = :CANCELED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class PaymentTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute category
        #   Transaction category
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category]
        required :category,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category }

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute descriptor
        #   Transaction descriptor
        #
        #   @return [String]
        required :descriptor, String

        # @!attribute direction
        #   Transfer direction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction]
        required :direction,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction }

        # @!attribute events
        #   List of transaction events
        #
        #   @return [Array<Object>]
        required :events, Lithic::Internal::Type::ArrayOf[Lithic::Internal::Type::Unknown]

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family }

        # @!attribute financial_account_token
        #   Financial account token
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute method_
        #   Transfer method
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method]
        required :method_,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method },
                 api_name: :method

        # @!attribute method_attributes
        #   Method-specific attributes
        #
        #   @return [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes]
        required :method_attributes,
                 union: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes }

        # @!attribute pending_amount
        #   Pending amount in cents
        #
        #   @return [Integer]
        required :pending_amount, Integer

        # @!attribute related_account_tokens
        #   Related account tokens for the transaction
        #
        #   @return [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens]
        required :related_account_tokens,
                 -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens }

        # @!attribute result
        #   Transaction result
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result]
        required :result,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result }

        # @!attribute settled_amount
        #   Settled amount in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute source
        #   Transaction source
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source]
        required :source,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source }

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute currency
        #   Currency of the transaction in ISO 4217 format
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute expected_release_date
        #   Expected release date for the transaction
        #
        #   @return [Date, nil]
        optional :expected_release_date, Date, nil?: true

        # @!attribute external_bank_account_token
        #   External bank account token
        #
        #   @return [String, nil]
        optional :external_bank_account_token, String, nil?: true

        # @!attribute user_defined_id
        #   User-defined identifier
        #
        #   @return [String, nil]
        optional :user_defined_id, String, nil?: true

        # @!method initialize(token:, category:, created:, descriptor:, direction:, events:, family:, financial_account_token:, method_:, method_attributes:, pending_amount:, related_account_tokens:, result:, settled_amount:, source:, status:, updated:, currency: nil, expected_release_date: nil, external_bank_account_token: nil, user_defined_id: nil)
        #   Payment transaction
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param category [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category] Transaction category
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param descriptor [String] Transaction descriptor
        #
        #   @param direction [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction] Transfer direction
        #
        #   @param events [Array<Object>] List of transaction events
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family]
        #
        #   @param financial_account_token [String] Financial account token
        #
        #   @param method_ [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method] Transfer method
        #
        #   @param method_attributes [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes] Method-specific attributes
        #
        #   @param pending_amount [Integer] Pending amount in cents
        #
        #   @param related_account_tokens [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens] Related account tokens for the transaction
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result] Transaction result
        #
        #   @param settled_amount [Integer] Settled amount in cents
        #
        #   @param source [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source] Transaction source
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
        #
        #   @param currency [String] Currency of the transaction in ISO 4217 format
        #
        #   @param expected_release_date [Date, nil] Expected release date for the transaction
        #
        #   @param external_bank_account_token [String, nil] External bank account token
        #
        #   @param user_defined_id [String, nil] User-defined identifier

        # Transaction category
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#category
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
          CARD = :CARD
          EXTERNAL_ACH = :EXTERNAL_ACH
          EXTERNAL_CHECK = :EXTERNAL_CHECK
          EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
          EXTERNAL_WIRE = :EXTERNAL_WIRE
          MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
          MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
          MANAGEMENT_FEE = :MANAGEMENT_FEE
          MANAGEMENT_REWARD = :MANAGEMENT_REWARD
          MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT
          PROGRAM_FUNDING = :PROGRAM_FUNDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Transfer direction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#direction
        module Direction
          extend Lithic::Internal::Type::Enum

          CREDIT = :CREDIT
          DEBIT = :DEBIT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#family
        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Transfer method
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#method_
        module Method
          extend Lithic::Internal::Type::Enum

          ACH_NEXT_DAY = :ACH_NEXT_DAY
          ACH_SAME_DAY = :ACH_SAME_DAY
          WIRE = :WIRE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Method-specific attributes
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#method_attributes
        module MethodAttributes
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes }

          variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes }

          class ACHMethodAttributes < Lithic::Internal::Type::BaseModel
            # @!attribute sec_code
            #   SEC code for ACH transaction
            #
            #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode]
            required :sec_code,
                     enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode }

            # @!attribute addenda
            #   Addenda information
            #
            #   @return [String, nil]
            optional :addenda, String, nil?: true

            # @!attribute company_id
            #   Company ID for the ACH transaction
            #
            #   @return [String, nil]
            optional :company_id, String, nil?: true

            # @!attribute receipt_routing_number
            #   Receipt routing number
            #
            #   @return [String, nil]
            optional :receipt_routing_number, String, nil?: true

            # @!attribute retries
            #   Number of retries attempted
            #
            #   @return [Integer, nil]
            optional :retries, Integer, nil?: true

            # @!attribute return_reason_code
            #   Return reason code if the transaction was returned
            #
            #   @return [String, nil]
            optional :return_reason_code, String, nil?: true

            # @!attribute trace_numbers
            #   Trace numbers for the ACH transaction
            #
            #   @return [Array<String>, nil]
            optional :trace_numbers, Lithic::Internal::Type::ArrayOf[String]

            # @!method initialize(sec_code:, addenda: nil, company_id: nil, receipt_routing_number: nil, retries: nil, return_reason_code: nil, trace_numbers: nil)
            #   @param sec_code [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode] SEC code for ACH transaction
            #
            #   @param addenda [String, nil] Addenda information
            #
            #   @param company_id [String, nil] Company ID for the ACH transaction
            #
            #   @param receipt_routing_number [String, nil] Receipt routing number
            #
            #   @param retries [Integer, nil] Number of retries attempted
            #
            #   @param return_reason_code [String, nil] Return reason code if the transaction was returned
            #
            #   @param trace_numbers [Array<String>] Trace numbers for the ACH transaction

            # SEC code for ACH transaction
            #
            # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes#sec_code
            module SecCode
              extend Lithic::Internal::Type::Enum

              CCD = :CCD
              PPD = :PPD
              WEB = :WEB
              TEL = :TEL
              CIE = :CIE
              CTX = :CTX

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class WireMethodAttributes < Lithic::Internal::Type::BaseModel
            # @!attribute wire_transfer_type
            #   Type of wire transfer
            #
            #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType]
            required :wire_transfer_type,
                     enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType }

            # @!attribute external_bank_name
            #   External bank name
            #
            #   @return [String, nil]
            optional :external_bank_name, String, nil?: true

            # @!attribute external_bank_routing_number
            #   External bank routing number
            #
            #   @return [String, nil]
            optional :external_bank_routing_number, String, nil?: true

            # @!attribute external_individual_name
            #   External individual name
            #
            #   @return [String, nil]
            optional :external_individual_name, String, nil?: true

            # @!attribute lithic_bank_name
            #   Lithic bank name
            #
            #   @return [String, nil]
            optional :lithic_bank_name, String, nil?: true

            # @!attribute lithic_bank_routing_number
            #   Lithic bank routing number
            #
            #   @return [String, nil]
            optional :lithic_bank_routing_number, String, nil?: true

            # @!attribute lithic_individual_name
            #   Lithic individual name
            #
            #   @return [String, nil]
            optional :lithic_individual_name, String, nil?: true

            # @!attribute previous_transfer
            #   UUID of previous transfer if this is a retry
            #
            #   @return [String, nil]
            optional :previous_transfer, String, nil?: true

            # @!method initialize(wire_transfer_type:, external_bank_name: nil, external_bank_routing_number: nil, external_individual_name: nil, lithic_bank_name: nil, lithic_bank_routing_number: nil, lithic_individual_name: nil, previous_transfer: nil)
            #   @param wire_transfer_type [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireTransferType] Type of wire transfer
            #
            #   @param external_bank_name [String, nil] External bank name
            #
            #   @param external_bank_routing_number [String, nil] External bank routing number
            #
            #   @param external_individual_name [String, nil] External individual name
            #
            #   @param lithic_bank_name [String, nil] Lithic bank name
            #
            #   @param lithic_bank_routing_number [String, nil] Lithic bank routing number
            #
            #   @param lithic_individual_name [String, nil] Lithic individual name
            #
            #   @param previous_transfer [String, nil] UUID of previous transfer if this is a retry

            # Type of wire transfer
            #
            # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes#wire_transfer_type
            module WireTransferType
              extend Lithic::Internal::Type::Enum

              FEDWIRE = :FEDWIRE
              SWIFT = :SWIFT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes)]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#related_account_tokens
        class RelatedAccountTokens < Lithic::Internal::Type::BaseModel
          # @!attribute account_token
          #   Globally unique identifier for the account
          #
          #   @return [String, nil]
          required :account_token, String, nil?: true

          # @!attribute business_account_token
          #   Globally unique identifier for the business account
          #
          #   @return [String, nil]
          required :business_account_token, String, nil?: true

          # @!method initialize(account_token:, business_account_token:)
          #   Related account tokens for the transaction
          #
          #   @param account_token [String, nil] Globally unique identifier for the account
          #
          #   @param business_account_token [String, nil] Globally unique identifier for the business account
        end

        # Transaction result
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Transaction source
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#source
        module Source
          extend Lithic::Internal::Type::Enum

          LITHIC = :LITHIC
          EXTERNAL = :EXTERNAL
          CUSTOMER = :CUSTOMER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#status
        module Status
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          SETTLED = :SETTLED
          DECLINED = :DECLINED
          REVERSED = :REVERSED
          CANCELED = :CANCELED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction, Lithic::Models::ExternalPayment, Lithic::Models::ManagementOperationTransaction)]
    end
  end
end
