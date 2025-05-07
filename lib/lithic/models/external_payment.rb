# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#create
    class ExternalPayment < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #
      #   @return [Symbol, Lithic::ExternalPayment::Category]
      required :category, enum: -> { Lithic::ExternalPayment::Category }

      # @!attribute created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute events
      #
      #   @return [Array<Lithic::ExternalPayment::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::ExternalPayment::Event] }

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute payment_type
      #
      #   @return [Symbol, Lithic::ExternalPayment::PaymentType]
      required :payment_type, enum: -> { Lithic::ExternalPayment::PaymentType }

      # @!attribute pending_amount
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::ExternalPayment::Result]
      required :result, enum: -> { Lithic::ExternalPayment::Result }

      # @!attribute settled_amount
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #
      #   @return [Symbol, Lithic::ExternalPayment::Status]
      required :status, enum: -> { Lithic::ExternalPayment::Status }

      # @!attribute updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(token:, category:, created:, currency:, events:, financial_account_token:, payment_type:, pending_amount:, result:, settled_amount:, status:, updated:, user_defined_id: nil)
      #   @param token [String]
      #   @param category [Symbol, Lithic::ExternalPayment::Category]
      #   @param created [Time]
      #   @param currency [String]
      #   @param events [Array<Lithic::ExternalPayment::Event>]
      #   @param financial_account_token [String]
      #   @param payment_type [Symbol, Lithic::ExternalPayment::PaymentType]
      #   @param pending_amount [Integer]
      #   @param result [Symbol, Lithic::ExternalPayment::Result]
      #   @param settled_amount [Integer]
      #   @param status [Symbol, Lithic::ExternalPayment::Status]
      #   @param updated [Time]
      #   @param user_defined_id [String]

      # @see Lithic::ExternalPayment#category
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
        #   @return [Array<Symbol, Lithic::ExternalPayment::Event::DetailedResult>]
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
        #   @return [Symbol, Lithic::ExternalPayment::Event::Result]
        required :result, enum: -> { Lithic::ExternalPayment::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::ExternalPayment::Event::Type]
        required :type, enum: -> { Lithic::ExternalPayment::Event::Type }

        # @!method initialize(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:)
        #   @param token [String]
        #   @param amount [Integer]
        #   @param created [Time]
        #   @param detailed_results [Array<Symbol, Lithic::ExternalPayment::Event::DetailedResult>]
        #   @param effective_date [Date]
        #   @param memo [String]
        #   @param result [Symbol, Lithic::ExternalPayment::Event::Result]
        #   @param type [Symbol, Lithic::ExternalPayment::Event::Type]

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::ExternalPayment::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::ExternalPayment::Event#type
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

      # @see Lithic::ExternalPayment#payment_type
      module PaymentType
        extend Lithic::Internal::Type::Enum

        DEPOSIT = :DEPOSIT
        WITHDRAWAL = :WITHDRAWAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::ExternalPayment#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::ExternalPayment#status
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
  end
end
