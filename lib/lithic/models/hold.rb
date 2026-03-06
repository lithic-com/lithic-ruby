# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Holds#create
    class Hold < Lithic::Internal::Type::BaseModel
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
      #   Status of a hold transaction
      #
      #   @return [Symbol, Lithic::Models::Hold::Status]
      required :status, enum: -> { Lithic::Hold::Status }

      # @!attribute updated
      #   ISO 8601 timestamp of when the transaction was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute events
      #
      #   @return [Array<Lithic::Models::HoldEvent>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::HoldEvent] }

      # @!attribute expiration_datetime
      #   When the hold will auto-expire if not resolved
      #
      #   @return [Time, nil]
      optional :expiration_datetime, Time, nil?: true

      # @!attribute family
      #   HOLD - Hold Transaction
      #
      #   @return [Symbol, Lithic::Models::Hold::Family, nil]
      optional :family, enum: -> { Lithic::Hold::Family }

      # @!attribute financial_account_token
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute pending_amount
      #   Current pending amount (0 when resolved)
      #
      #   @return [Integer, nil]
      optional :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::Hold::Result, nil]
      optional :result, enum: -> { Lithic::Hold::Result }

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String, nil?: true

      # @!method initialize(token:, created:, status:, updated:, currency: nil, events: nil, expiration_datetime: nil, family: nil, financial_account_token: nil, pending_amount: nil, result: nil, user_defined_id: nil)
      #   A hold transaction representing reserved funds on a financial account. Holds
      #   move funds from available to pending balance in anticipation of future payments.
      #   They can be resolved via settlement (linked to payment), manual release, or
      #   expiration.
      #
      #   @param token [String] Unique identifier for the transaction
      #
      #   @param created [Time] ISO 8601 timestamp of when the transaction was created
      #
      #   @param status [Symbol, Lithic::Models::Hold::Status] Status of a hold transaction
      #
      #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
      #
      #   @param currency [String]
      #
      #   @param events [Array<Lithic::Models::HoldEvent>]
      #
      #   @param expiration_datetime [Time, nil] When the hold will auto-expire if not resolved
      #
      #   @param family [Symbol, Lithic::Models::Hold::Family] HOLD - Hold Transaction
      #
      #   @param financial_account_token [String]
      #
      #   @param pending_amount [Integer] Current pending amount (0 when resolved)
      #
      #   @param result [Symbol, Lithic::Models::Hold::Result]
      #
      #   @param user_defined_id [String, nil]

      # Status of a hold transaction
      #
      # @see Lithic::Models::Hold#status
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        EXPIRED = :EXPIRED
        VOIDED = :VOIDED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED
        RETURNED = :RETURNED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # HOLD - Hold Transaction
      #
      # @see Lithic::Models::Hold#family
      module Family
        extend Lithic::Internal::Type::Enum

        HOLD = :HOLD

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::Hold#result
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
