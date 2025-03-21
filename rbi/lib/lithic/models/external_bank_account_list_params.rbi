# typed: strong

module Lithic
  module Models
    class ExternalBankAccountListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      sig { returns(T.nilable(T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol])) }
      attr_reader :account_types

      sig { params(account_types: T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol]).void }
      attr_writer :account_types

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :countries

      sig { params(countries: T::Array[String]).void }
      attr_writer :countries

      # A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      attr_reader :ending_before

      sig { params(ending_before: String).void }
      attr_writer :ending_before

      sig { returns(T.nilable(T::Array[Lithic::Models::OwnerType::OrSymbol])) }
      attr_reader :owner_types

      sig { params(owner_types: T::Array[Lithic::Models::OwnerType::OrSymbol]).void }
      attr_writer :owner_types

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      sig { returns(T.nilable(T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol])) }
      attr_reader :states

      sig { params(states: T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol]).void }
      attr_writer :states

      sig { returns(T.nilable(T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol])) }
      attr_reader :verification_states

      sig do
        params(
          verification_states: T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol]
        )
          .void
      end
      attr_writer :verification_states

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
