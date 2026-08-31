# typed: strong

module Lithic
  module Models
    class BlockchainRecipient < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::BlockchainRecipient, Lithic::Internal::AnyHash)
        end

      # A globally unique identifier for this blockchain recipient
      sig { returns(String) }
      attr_accessor :token

      # The financial account the blockchain recipient belongs to, or null when the
      # recipient is registered against the program rather than a financial account
      sig { returns(T.nilable(String)) }
      attr_accessor :account_token

      # An optional tag or memo used by some chains to identify the destination of a
      # transfer within a shared address
      sig { returns(T.nilable(String)) }
      attr_accessor :address_tag

      # The blockchain network that the address belongs to
      sig { returns(String) }
      attr_accessor :chain

      # An ISO 8601 string representing when this blockchain recipient was created
      sig { returns(Time) }
      attr_accessor :created

      # The identifier the recipient is registered under with the payment provider
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The nickname for this blockchain recipient
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Legal name of the business or individual who owns the blockchain address
      sig { returns(String) }
      attr_accessor :owner

      # Owner Type
      sig { returns(Lithic::OwnerType::TaggedSymbol) }
      attr_accessor :owner_type

      # Globally unique identifier for the program the blockchain recipient is
      # associated with
      sig { returns(String) }
      attr_accessor :program_id

      # Account State
      sig { returns(Lithic::BlockchainRecipient::State::TaggedSymbol) }
      attr_accessor :state

      # An ISO 8601 string representing when this blockchain recipient was last updated
      sig { returns(Time) }
      attr_accessor :updated

      # Verification State
      sig do
        returns(Lithic::BlockchainRecipient::VerificationState::TaggedSymbol)
      end
      attr_accessor :verification_state

      sig do
        params(
          token: String,
          account_token: T.nilable(String),
          address_tag: T.nilable(String),
          chain: String,
          created: Time,
          external_id: T.nilable(String),
          name: T.nilable(String),
          owner: String,
          owner_type: Lithic::OwnerType::OrSymbol,
          program_id: String,
          state: Lithic::BlockchainRecipient::State::OrSymbol,
          updated: Time,
          verification_state:
            Lithic::BlockchainRecipient::VerificationState::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A globally unique identifier for this blockchain recipient
        token:,
        # The financial account the blockchain recipient belongs to, or null when the
        # recipient is registered against the program rather than a financial account
        account_token:,
        # An optional tag or memo used by some chains to identify the destination of a
        # transfer within a shared address
        address_tag:,
        # The blockchain network that the address belongs to
        chain:,
        # An ISO 8601 string representing when this blockchain recipient was created
        created:,
        # The identifier the recipient is registered under with the payment provider
        external_id:,
        # The nickname for this blockchain recipient
        name:,
        # Legal name of the business or individual who owns the blockchain address
        owner:,
        # Owner Type
        owner_type:,
        # Globally unique identifier for the program the blockchain recipient is
        # associated with
        program_id:,
        # Account State
        state:,
        # An ISO 8601 string representing when this blockchain recipient was last updated
        updated:,
        # Verification State
        verification_state:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            account_token: T.nilable(String),
            address_tag: T.nilable(String),
            chain: String,
            created: Time,
            external_id: T.nilable(String),
            name: T.nilable(String),
            owner: String,
            owner_type: Lithic::OwnerType::TaggedSymbol,
            program_id: String,
            state: Lithic::BlockchainRecipient::State::TaggedSymbol,
            updated: Time,
            verification_state:
              Lithic::BlockchainRecipient::VerificationState::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Account State
      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::BlockchainRecipient::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(:ENABLED, Lithic::BlockchainRecipient::State::TaggedSymbol)
        CLOSED =
          T.let(:CLOSED, Lithic::BlockchainRecipient::State::TaggedSymbol)
        PAUSED =
          T.let(:PAUSED, Lithic::BlockchainRecipient::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::BlockchainRecipient::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Verification State
      module VerificationState
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::BlockchainRecipient::VerificationState)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            Lithic::BlockchainRecipient::VerificationState::TaggedSymbol
          )
        ENABLED =
          T.let(
            :ENABLED,
            Lithic::BlockchainRecipient::VerificationState::TaggedSymbol
          )
        FAILED_VERIFICATION =
          T.let(
            :FAILED_VERIFICATION,
            Lithic::BlockchainRecipient::VerificationState::TaggedSymbol
          )
        INSUFFICIENT_FUNDS =
          T.let(
            :INSUFFICIENT_FUNDS,
            Lithic::BlockchainRecipient::VerificationState::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::BlockchainRecipient::VerificationState::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
