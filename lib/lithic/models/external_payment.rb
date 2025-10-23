# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#create
    class ExternalPayment < Lithic::Internal::Type::BaseModel
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

      # @!attribute status
      #   The status of the transaction
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::Status]
      required :status, enum: -> { Lithic::ExternalPayment::Status }

      # @!attribute updated
      #   ISO 8601 timestamp of when the transaction was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::Category, nil]
      optional :category, enum: -> { Lithic::ExternalPayment::Category }

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute events
      #
      #   @return [Array<Lithic::Models::ExternalPayment::Event>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::ExternalPayment::Event] }

      # @!attribute family
      #   EXTERNAL_PAYMENT - External Payment Response
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::Family, nil]
      optional :family, enum: -> { Lithic::ExternalPayment::Family }

      # @!attribute financial_account_token
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute payment_type
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::PaymentType, nil]
      optional :payment_type, enum: -> { Lithic::ExternalPayment::PaymentType }

      # @!attribute pending_amount
      #
      #   @return [Integer, nil]
      optional :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::Result, nil]
      optional :result, enum: -> { Lithic::ExternalPayment::Result }

      # @!attribute settled_amount
      #
      #   @return [Integer, nil]
      optional :settled_amount, Integer

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(token:, created:, status:, updated:, category: nil, currency: nil, events: nil, family: nil, financial_account_token: nil, payment_type: nil, pending_amount: nil, result: nil, settled_amount: nil, user_defined_id: nil)
      #   @param token [String] Unique identifier for the transaction
      #
      #   @param created [Time] ISO 8601 timestamp of when the transaction was created
      #
      #   @param status [Symbol, Lithic::Models::ExternalPayment::Status] The status of the transaction
      #
      #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
      #
      #   @param category [Symbol, Lithic::Models::ExternalPayment::Category]
      #
      #   @param currency [String]
      #
      #   @param events [Array<Lithic::Models::ExternalPayment::Event>]
      #
      #   @param family [Symbol, Lithic::Models::ExternalPayment::Family] EXTERNAL_PAYMENT - External Payment Response
      #
      #   @param financial_account_token [String]
      #
      #   @param payment_type [Symbol, Lithic::Models::ExternalPayment::PaymentType]
      #
      #   @param pending_amount [Integer]
      #
      #   @param result [Symbol, Lithic::Models::ExternalPayment::Result]
      #
      #   @param settled_amount [Integer]
      #
      #   @param user_defined_id [String]

      # The status of the transaction
      #
      # @see Lithic::Models::ExternalPayment#status
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

      # @see Lithic::Models::ExternalPayment#category
      module Category
        extend Lithic::Internal::Type::Enum

        EXTERNAL_WIRE = :EXTERNAL_WIRE
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Event < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #
        #   @return [String]
        required :token, String

        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute detailed_results
        #
        #   @return [Array<Symbol, Lithic::Models::ExternalPayment::Event::DetailedResult>]
        required :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::ExternalPayment::Event::DetailedResult] }

        # @!attribute effective_date
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute memo
        #
        #   @return [String]
        required :memo, String

        # @!attribute result
        #
        #   @return [Symbol, Lithic::Models::ExternalPayment::Event::Result]
        required :result, enum: -> { Lithic::ExternalPayment::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::ExternalPayment::Event::Type]
        required :type, enum: -> { Lithic::ExternalPayment::Event::Type }

        # @!method initialize(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:)
        #   @param token [String]
        #   @param amount [Integer]
        #   @param created [Time]
        #   @param detailed_results [Array<Symbol, Lithic::Models::ExternalPayment::Event::DetailedResult>]
        #   @param effective_date [Date]
        #   @param memo [String]
        #   @param result [Symbol, Lithic::Models::ExternalPayment::Event::Result]
        #   @param type [Symbol, Lithic::Models::ExternalPayment::Event::Type]

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ExternalPayment::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ExternalPayment::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          EXTERNAL_WIRE_INITIATED = :EXTERNAL_WIRE_INITIATED
          EXTERNAL_WIRE_CANCELED = :EXTERNAL_WIRE_CANCELED
          EXTERNAL_WIRE_SETTLED = :EXTERNAL_WIRE_SETTLED
          EXTERNAL_WIRE_REVERSED = :EXTERNAL_WIRE_REVERSED
          EXTERNAL_WIRE_RELEASED = :EXTERNAL_WIRE_RELEASED
          EXTERNAL_ACH_INITIATED = :EXTERNAL_ACH_INITIATED
          EXTERNAL_ACH_CANCELED = :EXTERNAL_ACH_CANCELED
          EXTERNAL_ACH_SETTLED = :EXTERNAL_ACH_SETTLED
          EXTERNAL_ACH_REVERSED = :EXTERNAL_ACH_REVERSED
          EXTERNAL_ACH_RELEASED = :EXTERNAL_ACH_RELEASED
          EXTERNAL_TRANSFER_INITIATED = :EXTERNAL_TRANSFER_INITIATED
          EXTERNAL_TRANSFER_CANCELED = :EXTERNAL_TRANSFER_CANCELED
          EXTERNAL_TRANSFER_SETTLED = :EXTERNAL_TRANSFER_SETTLED
          EXTERNAL_TRANSFER_REVERSED = :EXTERNAL_TRANSFER_REVERSED
          EXTERNAL_TRANSFER_RELEASED = :EXTERNAL_TRANSFER_RELEASED
          EXTERNAL_CHECK_INITIATED = :EXTERNAL_CHECK_INITIATED
          EXTERNAL_CHECK_CANCELED = :EXTERNAL_CHECK_CANCELED
          EXTERNAL_CHECK_SETTLED = :EXTERNAL_CHECK_SETTLED
          EXTERNAL_CHECK_REVERSED = :EXTERNAL_CHECK_REVERSED
          EXTERNAL_CHECK_RELEASED = :EXTERNAL_CHECK_RELEASED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # EXTERNAL_PAYMENT - External Payment Response
      #
      # @see Lithic::Models::ExternalPayment#family
      module Family
        extend Lithic::Internal::Type::Enum

        EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::ExternalPayment#payment_type
      module PaymentType
        extend Lithic::Internal::Type::Enum

        DEPOSIT = :DEPOSIT
        WITHDRAWAL = :WITHDRAWAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::ExternalPayment#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
