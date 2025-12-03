# frozen_string_literal: true

module Lithic
  module Models
    class InternalTransactionAPI < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::InternalTransactionAPI::Category]
      required :category, enum: -> { Lithic::InternalTransactionAPI::Category }

      # @!attribute created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute descriptor
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute events
      #
      #   @return [Array<Lithic::Models::InternalTransactionAPI::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::InternalTransactionAPI::Event] }

      # @!attribute pending_amount
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::InternalTransactionAPI::Result]
      required :result, enum: -> { Lithic::InternalTransactionAPI::Result }

      # @!attribute settled_amount
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #
      #   @return [Symbol, Lithic::Models::InternalTransactionAPI::Status]
      required :status, enum: -> { Lithic::InternalTransactionAPI::Status }

      # @!attribute updated
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, category:, created:, currency:, descriptor:, events:, pending_amount:, result:, settled_amount:, status:, updated:)
      #   @param token [String]
      #   @param category [Symbol, Lithic::Models::InternalTransactionAPI::Category]
      #   @param created [Time]
      #   @param currency [String]
      #   @param descriptor [String]
      #   @param events [Array<Lithic::Models::InternalTransactionAPI::Event>]
      #   @param pending_amount [Integer]
      #   @param result [Symbol, Lithic::Models::InternalTransactionAPI::Result]
      #   @param settled_amount [Integer]
      #   @param status [Symbol, Lithic::Models::InternalTransactionAPI::Status]
      #   @param updated [Time]

      # @see Lithic::Models::InternalTransactionAPI#category
      module Category
        extend Lithic::Internal::Type::Enum

        INTERNAL = :INTERNAL

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

        # @!attribute result
        #
        #   @return [Symbol, Lithic::Models::InternalTransactionAPI::Event::Result]
        required :result, enum: -> { Lithic::InternalTransactionAPI::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::InternalTransactionAPI::Event::Type]
        required :type, enum: -> { Lithic::InternalTransactionAPI::Event::Type }

        # @!method initialize(token:, amount:, created:, result:, type:)
        #   @param token [String]
        #   @param amount [Integer]
        #   @param created [Time]
        #   @param result [Symbol, Lithic::Models::InternalTransactionAPI::Event::Result]
        #   @param type [Symbol, Lithic::Models::InternalTransactionAPI::Event::Type]

        # @see Lithic::Models::InternalTransactionAPI::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::InternalTransactionAPI::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          INTERNAL_ADJUSTMENT = :INTERNAL_ADJUSTMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Lithic::Models::InternalTransactionAPI#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::InternalTransactionAPI#status
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED
        RETURNED = :RETURNED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
