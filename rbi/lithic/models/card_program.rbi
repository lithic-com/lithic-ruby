# typed: strong

module Lithic
  module Models
    class CardProgram < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::CardProgram, Lithic::Internal::AnyHash) }

      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Timestamp of when the card program was created.
      sig { returns(Time) }
      attr_accessor :created

      # The name of the card program.
      sig { returns(String) }
      attr_accessor :name

      # The first digits of the card number that this card program ends with.
      sig { returns(String) }
      attr_accessor :pan_range_end

      # The first digits of the card number that this card program starts with.
      sig { returns(String) }
      attr_accessor :pan_range_start

      # Whether the card program is participating in Account Level Management. Currently
      # applicable to Visa card programs only.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :account_level_management_enabled

      sig { params(account_level_management_enabled: T::Boolean).void }
      attr_writer :account_level_management_enabled

      # 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      sig { returns(T.nilable(String)) }
      attr_reader :cardholder_currency

      sig { params(cardholder_currency: String).void }
      attr_writer :cardholder_currency

      # List of 3-character alphabetic ISO 4217 codes for the currencies that the card
      # program supports for settlement.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :settlement_currencies

      sig { params(settlement_currencies: T::Array[String]).void }
      attr_writer :settlement_currencies

      sig do
        params(
          token: String,
          created: Time,
          name: String,
          pan_range_end: String,
          pan_range_start: String,
          account_level_management_enabled: T::Boolean,
          cardholder_currency: String,
          settlement_currencies: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier.
        token:,
        # Timestamp of when the card program was created.
        created:,
        # The name of the card program.
        name:,
        # The first digits of the card number that this card program ends with.
        pan_range_end:,
        # The first digits of the card number that this card program starts with.
        pan_range_start:,
        # Whether the card program is participating in Account Level Management. Currently
        # applicable to Visa card programs only.
        account_level_management_enabled: nil,
        # 3-character alphabetic ISO 4217 code for the currency of the cardholder.
        cardholder_currency: nil,
        # List of 3-character alphabetic ISO 4217 codes for the currencies that the card
        # program supports for settlement.
        settlement_currencies: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            created: Time,
            name: String,
            pan_range_end: String,
            pan_range_start: String,
            account_level_management_enabled: T::Boolean,
            cardholder_currency: String,
            settlement_currencies: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
