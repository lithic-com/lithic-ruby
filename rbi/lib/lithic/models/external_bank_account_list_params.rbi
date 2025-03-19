# typed: strong

module Lithic
  module Models
    class ExternalBankAccountListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def account_types
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def account_types=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def countries
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def countries=(_)
      end

      # A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      def ending_before
      end

      sig { params(_: String).returns(String) }
      def ending_before=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def owner_types
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def owner_types=(_)
      end

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      def starting_after
      end

      sig { params(_: String).returns(String) }
      def starting_after=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def states
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def states=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def verification_states
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def verification_states=(_)
      end

      sig do
        params(
          account_token: String,
          account_types: T::Array[Symbol],
          countries: T::Array[String],
          ending_before: String,
          owner_types: T::Array[Symbol],
          page_size: Integer,
          starting_after: String,
          states: T::Array[Symbol],
          verification_states: T::Array[Symbol],
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        account_types: nil,
        countries: nil,
        ending_before: nil,
        owner_types: nil,
        page_size: nil,
        starting_after: nil,
        states: nil,
        verification_states: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_token: String,
              account_types: T::Array[Symbol],
              countries: T::Array[String],
              ending_before: String,
              owner_types: T::Array[Symbol],
              page_size: Integer,
              starting_after: String,
              states: T::Array[Symbol],
              verification_states: T::Array[Symbol],
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AccountType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS
      end

      class State < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ENABLED = :ENABLED
        CLOSED = :CLOSED
        PAUSED = :PAUSED
      end

      class VerificationState < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PENDING = :PENDING
        ENABLED = :ENABLED
        FAILED_VERIFICATION = :FAILED_VERIFICATION
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS
      end
    end
  end
end
