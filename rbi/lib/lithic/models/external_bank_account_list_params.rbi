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

      sig { returns(T.nilable(T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol])) }
      def account_types
      end

      sig do
        params(_: T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol])
          .returns(T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol])
      end
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

      sig { returns(T.nilable(T::Array[Lithic::Models::OwnerType::OrSymbol])) }
      def owner_types
      end

      sig do
        params(_: T::Array[Lithic::Models::OwnerType::OrSymbol])
          .returns(T::Array[Lithic::Models::OwnerType::OrSymbol])
      end
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

      sig { returns(T.nilable(T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol])) }
      def states
      end

      sig do
        params(_: T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol])
          .returns(T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol])
      end
      def states=(_)
      end

      sig { returns(T.nilable(T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol])) }
      def verification_states
      end

      sig do
        params(_: T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol])
          .returns(T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol])
      end
      def verification_states=(_)
      end

      sig do
        params(
          account_token: String,
          account_types: T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol],
          countries: T::Array[String],
          ending_before: String,
          owner_types: T::Array[Lithic::Models::OwnerType::OrSymbol],
          page_size: Integer,
          starting_after: String,
          states: T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol],
          verification_states: T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol],
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
              account_types: T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol],
              countries: T::Array[String],
              ending_before: String,
              owner_types: T::Array[Lithic::Models::OwnerType::OrSymbol],
              page_size: Integer,
              starting_after: String,
              states: T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol],
              verification_states: T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol],
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module AccountType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType::TaggedSymbol) }

        CHECKING = T.let(:CHECKING, Lithic::Models::ExternalBankAccountListParams::AccountType::TaggedSymbol)
        SAVINGS = T.let(:SAVINGS, Lithic::Models::ExternalBankAccountListParams::AccountType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::TaggedSymbol]) }
          def values
          end
        end
      end

      module State
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListParams::State) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListParams::State::TaggedSymbol) }

        ENABLED = T.let(:ENABLED, Lithic::Models::ExternalBankAccountListParams::State::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::ExternalBankAccountListParams::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::ExternalBankAccountListParams::State::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountListParams::State::TaggedSymbol]) }
          def values
          end
        end
      end

      module VerificationState
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::ExternalBankAccountListParams::VerificationState::TaggedSymbol)
        ENABLED = T.let(:ENABLED, Lithic::Models::ExternalBankAccountListParams::VerificationState::TaggedSymbol)
        FAILED_VERIFICATION =
          T.let(
            :FAILED_VERIFICATION,
            Lithic::Models::ExternalBankAccountListParams::VerificationState::TaggedSymbol
          )
        INSUFFICIENT_FUNDS =
          T.let(:INSUFFICIENT_FUNDS, Lithic::Models::ExternalBankAccountListParams::VerificationState::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
