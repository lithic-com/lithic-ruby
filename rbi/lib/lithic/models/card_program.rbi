# typed: strong

module Lithic
  module Models
    class CardProgram < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Timestamp of when the card program was created.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # The name of the card program.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The first digits of the card number that this card program ends with.
      sig { returns(String) }
      def pan_range_end
      end

      sig { params(_: String).returns(String) }
      def pan_range_end=(_)
      end

      # The first digits of the card number that this card program starts with.
      sig { returns(String) }
      def pan_range_start
      end

      sig { params(_: String).returns(String) }
      def pan_range_start=(_)
      end

      # 3-character alphabetic ISO 4217 code for the currency of the cardholder.
      sig { returns(T.nilable(String)) }
      def cardholder_currency
      end

      sig { params(_: String).returns(String) }
      def cardholder_currency=(_)
      end

      # List of 3-character alphabetic ISO 4217 codes for the currencies that the card
      #   program supports for settlement.
      sig { returns(T.nilable(T::Array[String])) }
      def settlement_currencies
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def settlement_currencies=(_)
      end

      sig do
        params(
          token: String,
          created: Time,
          name: String,
          pan_range_end: String,
          pan_range_start: String,
          cardholder_currency: String,
          settlement_currencies: T::Array[String]
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        created:,
        name:,
        pan_range_end:,
        pan_range_start:,
        cardholder_currency: nil,
        settlement_currencies: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              created: Time,
              name: String,
              pan_range_end: String,
              pan_range_start: String,
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
