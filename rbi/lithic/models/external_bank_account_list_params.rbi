# typed: strong

module Lithic
  module Models
    class ExternalBankAccountListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      sig do
        returns(
          T.nilable(
            T::Array[
              Lithic::ExternalBankAccountListParams::AccountType::OrSymbol
            ]
          )
        )
      end
      attr_reader :account_types

      sig do
        params(
          account_types:
            T::Array[
              Lithic::ExternalBankAccountListParams::AccountType::OrSymbol
            ]
        ).void
      end
      attr_writer :account_types

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :countries

      sig { params(countries: T::Array[String]).void }
      attr_writer :countries

      # A cursor representing an item's token before which a page of results should end.
      # Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      attr_reader :ending_before

      sig { params(ending_before: String).void }
      attr_writer :ending_before

      sig { returns(T.nilable(T::Array[Lithic::OwnerType::OrSymbol])) }
      attr_reader :owner_types

      sig { params(owner_types: T::Array[Lithic::OwnerType::OrSymbol]).void }
      attr_writer :owner_types

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      sig do
        returns(
          T.nilable(
            T::Array[Lithic::ExternalBankAccountListParams::State::OrSymbol]
          )
        )
      end
      attr_reader :states

      sig do
        params(
          states:
            T::Array[Lithic::ExternalBankAccountListParams::State::OrSymbol]
        ).void
      end
      attr_writer :states

      sig do
        returns(
          T.nilable(
            T::Array[
              Lithic::ExternalBankAccountListParams::VerificationState::OrSymbol
            ]
          )
        )
      end
      attr_reader :verification_states

      sig do
        params(
          verification_states:
            T::Array[
              Lithic::ExternalBankAccountListParams::VerificationState::OrSymbol
            ]
        ).void
      end
      attr_writer :verification_states

      sig do
        params(
          account_token: String,
          account_types:
            T::Array[
              Lithic::ExternalBankAccountListParams::AccountType::OrSymbol
            ],
          countries: T::Array[String],
          ending_before: String,
          owner_types: T::Array[Lithic::OwnerType::OrSymbol],
          page_size: Integer,
          starting_after: String,
          states:
            T::Array[Lithic::ExternalBankAccountListParams::State::OrSymbol],
          verification_states:
            T::Array[
              Lithic::ExternalBankAccountListParams::VerificationState::OrSymbol
            ],
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        account_types: nil,
        countries: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        owner_types: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        states: nil,
        verification_states: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            account_types:
              T::Array[
                Lithic::ExternalBankAccountListParams::AccountType::OrSymbol
              ],
            countries: T::Array[String],
            ending_before: String,
            owner_types: T::Array[Lithic::OwnerType::OrSymbol],
            page_size: Integer,
            starting_after: String,
            states:
              T::Array[Lithic::ExternalBankAccountListParams::State::OrSymbol],
            verification_states:
              T::Array[
                Lithic::ExternalBankAccountListParams::VerificationState::OrSymbol
              ],
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      module AccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalBankAccountListParams::AccountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHECKING =
          T.let(
            :CHECKING,
            Lithic::ExternalBankAccountListParams::AccountType::TaggedSymbol
          )
        SAVINGS =
          T.let(
            :SAVINGS,
            Lithic::ExternalBankAccountListParams::AccountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ExternalBankAccountListParams::AccountType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalBankAccountListParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :ENABLED,
            Lithic::ExternalBankAccountListParams::State::TaggedSymbol
          )
        CLOSED =
          T.let(
            :CLOSED,
            Lithic::ExternalBankAccountListParams::State::TaggedSymbol
          )
        PAUSED =
          T.let(
            :PAUSED,
            Lithic::ExternalBankAccountListParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ExternalBankAccountListParams::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module VerificationState
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::ExternalBankAccountListParams::VerificationState
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            Lithic::ExternalBankAccountListParams::VerificationState::TaggedSymbol
          )
        ENABLED =
          T.let(
            :ENABLED,
            Lithic::ExternalBankAccountListParams::VerificationState::TaggedSymbol
          )
        FAILED_VERIFICATION =
          T.let(
            :FAILED_VERIFICATION,
            Lithic::ExternalBankAccountListParams::VerificationState::TaggedSymbol
          )
        INSUFFICIENT_FUNDS =
          T.let(
            :INSUFFICIENT_FUNDS,
            Lithic::ExternalBankAccountListParams::VerificationState::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ExternalBankAccountListParams::VerificationState::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
