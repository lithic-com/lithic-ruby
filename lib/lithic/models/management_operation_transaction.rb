# frozen_string_literal: true

module Lithic
  module Models
    class ManagementOperationTransaction < Lithic::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Category]
      required :category, enum: -> { Lithic::Models::ManagementOperationTransaction::Category }

      # @!attribute created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute direction
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Direction]
      required :direction, enum: -> { Lithic::Models::ManagementOperationTransaction::Direction }

      # @!attribute events
      #
      #   @return [Array<Lithic::Models::ManagementOperationTransaction::Event>]
      required :events, -> { Lithic::ArrayOf[Lithic::Models::ManagementOperationTransaction::Event] }

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute pending_amount
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Result]
      required :result, enum: -> { Lithic::Models::ManagementOperationTransaction::Result }

      # @!attribute settled_amount
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Status]
      required :status, enum: -> { Lithic::Models::ManagementOperationTransaction::Status }

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
      #   # @param category [Symbol, Lithic::Models::ManagementOperationTransaction::Category]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param direction [Symbol, Lithic::Models::ManagementOperationTransaction::Direction]
      #   # @param events [Array<Lithic::Models::ManagementOperationTransaction::Event>]
      #   # @param financial_account_token [String]
      #   # @param pending_amount [Integer]
      #   # @param result [Symbol, Lithic::Models::ManagementOperationTransaction::Result]
      #   # @param settled_amount [Integer]
      #   # @param status [Symbol, Lithic::Models::ManagementOperationTransaction::Status]
      #   # @param updated [Time]
      #   # @param user_defined_id [String]
      #   #
      #   def initialize(
      #     token:,
      #     category:,
      #     created:,
      #     currency:,
      #     direction:,
      #     events:,
      #     financial_account_token:,
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

      module Category
        extend Lithic::Enum

        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      module Direction
        extend Lithic::Enum

        CREDIT = :CREDIT
        DEBIT = :DEBIT

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
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
        #   @return [Array<Symbol, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult>]
        required :detailed_results,
                 -> { Lithic::ArrayOf[enum: Lithic::Models::ManagementOperationTransaction::Event::DetailedResult] }

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
        #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Result]
        required :result, enum: -> { Lithic::Models::ManagementOperationTransaction::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Type]
        required :type, enum: -> { Lithic::Models::ManagementOperationTransaction::Event::Type }

        # @!attribute [r] subtype
        #
        #   @return [String, nil]
        optional :subtype, String

        # @!parse
        #   # @return [String]
        #   attr_writer :subtype

        # @!parse
        #   # @param token [String]
        #   # @param amount [Integer]
        #   # @param created [Time]
        #   # @param detailed_results [Array<Symbol, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult>]
        #   # @param effective_date [Date]
        #   # @param memo [String]
        #   # @param result [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Result]
        #   # @param type [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Type]
        #   # @param subtype [String]
        #   #
        #   def initialize(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:, subtype: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        module DetailedResult
          extend Lithic::Enum

          APPROVED = :APPROVED

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end

        module Result
          extend Lithic::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end

        module Type
          extend Lithic::Enum

          CASH_BACK = :CASH_BACK
          CURRENCY_CONVERSION = :CURRENCY_CONVERSION
          INTEREST = :INTEREST
          LATE_PAYMENT = :LATE_PAYMENT
          BILLING_ERROR = :BILLING_ERROR
          PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
          LOSS_WRITE_OFF = :LOSS_WRITE_OFF
          CASH_BACK_REVERSAL = :CASH_BACK_REVERSAL
          CURRENCY_CONVERSION_REVERSAL = :CURRENCY_CONVERSION_REVERSAL
          INTEREST_REVERSAL = :INTEREST_REVERSAL
          LATE_PAYMENT_REVERSAL = :LATE_PAYMENT_REVERSAL
          BILLING_ERROR_REVERSAL = :BILLING_ERROR_REVERSAL
          PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
          RETURNED_PAYMENT = :RETURNED_PAYMENT
          RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end
      end

      module Result
        extend Lithic::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      module Status
        extend Lithic::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
