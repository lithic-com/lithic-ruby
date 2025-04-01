# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalPayments#create
    class ExternalPayment < Lithic::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::Category]
      required :category, enum: -> { Lithic::Models::ExternalPayment::Category }

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
      #   @return [Array<Lithic::Models::ExternalPayment::Event>]
      required :events, -> { Lithic::ArrayOf[Lithic::Models::ExternalPayment::Event] }

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute payment_type
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::PaymentType]
      required :payment_type, enum: -> { Lithic::Models::ExternalPayment::PaymentType }

      # @!attribute pending_amount
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::Result]
      required :result, enum: -> { Lithic::Models::ExternalPayment::Result }

      # @!attribute settled_amount
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #
      #   @return [Symbol, Lithic::Models::ExternalPayment::Status]
      required :status, enum: -> { Lithic::Models::ExternalPayment::Status }

      # @!attribute updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute [r] user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :user_defined_id

      # @!parse
      #   # @param token [String]
      #   # @param category [Symbol, Lithic::Models::ExternalPayment::Category]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param events [Array<Lithic::Models::ExternalPayment::Event>]
      #   # @param financial_account_token [String]
      #   # @param payment_type [Symbol, Lithic::Models::ExternalPayment::PaymentType]
      #   # @param pending_amount [Integer]
      #   # @param result [Symbol, Lithic::Models::ExternalPayment::Result]
      #   # @param settled_amount [Integer]
      #   # @param status [Symbol, Lithic::Models::ExternalPayment::Status]
      #   # @param updated [Time]
      #   # @param user_defined_id [String]
      #   #
      #   def initialize(
      #     token:,
      #     category:,
      #     created:,
      #     currency:,
      #     events:,
      #     financial_account_token:,
      #     payment_type:,
      #     pending_amount:,
      #     result:,
      #     settled_amount:,
      #     status:,
      #     updated:,
      #     user_defined_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # @see Lithic::Models::ExternalPayment#category
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

      class Event < Lithic::BaseModel
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
                 -> { Lithic::ArrayOf[enum: Lithic::Models::ExternalPayment::Event::DetailedResult] }

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
        required :result, enum: -> { Lithic::Models::ExternalPayment::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::ExternalPayment::Event::Type]
        required :type, enum: -> { Lithic::Models::ExternalPayment::Event::Type }

        # @!parse
        #   # @param token [String]
        #   # @param amount [Integer]
        #   # @param created [Time]
        #   # @param detailed_results [Array<Symbol, Lithic::Models::ExternalPayment::Event::DetailedResult>]
        #   # @param effective_date [Date]
        #   # @param memo [String]
        #   # @param result [Symbol, Lithic::Models::ExternalPayment::Event::Result]
        #   # @param type [Symbol, Lithic::Models::ExternalPayment::Event::Type]
        #   #
        #   def initialize(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        module DetailedResult
          extend Lithic::Enum

          APPROVED = :APPROVED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Lithic::Models::ExternalPayment::Event#result
        module Result
          extend Lithic::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Lithic::Models::ExternalPayment::Event#type
        module Type
          extend Lithic::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Lithic::Models::ExternalPayment#payment_type
      module PaymentType
        extend Lithic::Enum

        DEPOSIT = :DEPOSIT
        WITHDRAWAL = :WITHDRAWAL

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::ExternalPayment#result
      module Result
        extend Lithic::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Lithic::Models::ExternalPayment#status
      module Status
        extend Lithic::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
