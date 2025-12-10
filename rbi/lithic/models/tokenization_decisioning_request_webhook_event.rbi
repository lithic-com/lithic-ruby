# typed: strong

module Lithic
  module Models
    class TokenizationDecisioningRequestWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationDecisioningRequestWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # Unique identifier for the user tokenizing a card
      sig { returns(String) }
      attr_accessor :account_token

      # Unique identifier for the card being tokenized
      sig { returns(String) }
      attr_accessor :card_token

      # Indicate when the request was received from Mastercard or Visa
      sig { returns(Time) }
      attr_accessor :created

      # The name of this event
      sig do
        returns(
          Lithic::TokenizationDecisioningRequestWebhookEvent::EventType::TaggedSymbol
        )
      end
      attr_accessor :event_type

      # Whether Lithic decisioned on the token, and if so, what the decision was.
      # APPROVED/VERIFICATION_REQUIRED/DENIED.
      sig do
        returns(
          Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision::TaggedSymbol
        )
      end
      attr_accessor :issuer_decision

      # The channel through which the tokenization was made.
      sig do
        returns(
          Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel::TaggedSymbol
        )
      end
      attr_accessor :tokenization_channel

      # Unique identifier for the digital wallet token attempt
      sig { returns(String) }
      attr_accessor :tokenization_token

      sig { returns(Lithic::WalletDecisioningInfo) }
      attr_reader :wallet_decisioning_info

      sig do
        params(
          wallet_decisioning_info: Lithic::WalletDecisioningInfo::OrHash
        ).void
      end
      attr_writer :wallet_decisioning_info

      sig { returns(T.nilable(Lithic::Device)) }
      attr_reader :device

      sig { params(device: Lithic::Device::OrHash).void }
      attr_writer :device

      # Contains the metadata for the digital wallet being tokenized.
      sig { returns(T.nilable(Lithic::DigitalWalletTokenMetadata)) }
      attr_reader :digital_wallet_token_metadata

      sig do
        params(
          digital_wallet_token_metadata:
            Lithic::DigitalWalletTokenMetadata::OrHash
        ).void
      end
      attr_writer :digital_wallet_token_metadata

      # The source of the tokenization.
      sig do
        returns(
          T.nilable(
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        )
      end
      attr_reader :tokenization_source

      sig do
        params(
          tokenization_source:
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::OrSymbol
        ).void
      end
      attr_writer :tokenization_source

      # A webhook for tokenization decisioning sent to the customer's responder endpoint
      sig do
        params(
          account_token: String,
          card_token: String,
          created: Time,
          event_type:
            Lithic::TokenizationDecisioningRequestWebhookEvent::EventType::OrSymbol,
          issuer_decision:
            Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision::OrSymbol,
          tokenization_channel:
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel::OrSymbol,
          tokenization_token: String,
          wallet_decisioning_info: Lithic::WalletDecisioningInfo::OrHash,
          device: Lithic::Device::OrHash,
          digital_wallet_token_metadata:
            Lithic::DigitalWalletTokenMetadata::OrHash,
          tokenization_source:
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the user tokenizing a card
        account_token:,
        # Unique identifier for the card being tokenized
        card_token:,
        # Indicate when the request was received from Mastercard or Visa
        created:,
        # The name of this event
        event_type:,
        # Whether Lithic decisioned on the token, and if so, what the decision was.
        # APPROVED/VERIFICATION_REQUIRED/DENIED.
        issuer_decision:,
        # The channel through which the tokenization was made.
        tokenization_channel:,
        # Unique identifier for the digital wallet token attempt
        tokenization_token:,
        wallet_decisioning_info:,
        device: nil,
        # Contains the metadata for the digital wallet being tokenized.
        digital_wallet_token_metadata: nil,
        # The source of the tokenization.
        tokenization_source: nil
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            card_token: String,
            created: Time,
            event_type:
              Lithic::TokenizationDecisioningRequestWebhookEvent::EventType::TaggedSymbol,
            issuer_decision:
              Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision::TaggedSymbol,
            tokenization_channel:
              Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel::TaggedSymbol,
            tokenization_token: String,
            wallet_decisioning_info: Lithic::WalletDecisioningInfo,
            device: Lithic::Device,
            digital_wallet_token_metadata: Lithic::DigitalWalletTokenMetadata,
            tokenization_source:
              Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The name of this event
      module EventType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::TokenizationDecisioningRequestWebhookEvent::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"digital_wallet.tokenization_approval_request",
            Lithic::TokenizationDecisioningRequestWebhookEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationDecisioningRequestWebhookEvent::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Whether Lithic decisioned on the token, and if so, what the decision was.
      # APPROVED/VERIFICATION_REQUIRED/DENIED.
      module IssuerDecision
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision::TaggedSymbol
          )
        DENIED =
          T.let(
            :DENIED,
            Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision::TaggedSymbol
          )
        VERIFICATION_REQUIRED =
          T.let(
            :VERIFICATION_REQUIRED,
            Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The channel through which the tokenization was made.
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIGITAL_WALLET =
          T.let(
            :DIGITAL_WALLET,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel::TaggedSymbol
          )
        MERCHANT =
          T.let(
            :MERCHANT,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The source of the tokenization.
      module TokenizationSource
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_ON_FILE =
          T.let(
            :ACCOUNT_ON_FILE,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        CONTACTLESS_TAP =
          T.let(
            :CONTACTLESS_TAP,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        MANUAL_PROVISION =
          T.let(
            :MANUAL_PROVISION,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        PUSH_PROVISION =
          T.let(
            :PUSH_PROVISION,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        TOKEN =
          T.let(
            :TOKEN,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
