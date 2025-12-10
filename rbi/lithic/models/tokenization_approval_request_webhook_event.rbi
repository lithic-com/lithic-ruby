# typed: strong

module Lithic
  module Models
    class TokenizationApprovalRequestWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationApprovalRequestWebhookEvent,
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

      # Contains the metadata for the customer tokenization decision.
      sig do
        returns(
          T.nilable(
            Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision
          )
        )
      end
      attr_reader :customer_tokenization_decision

      sig do
        params(
          customer_tokenization_decision:
            T.nilable(
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::OrHash
            )
        ).void
      end
      attr_writer :customer_tokenization_decision

      # The name of this event
      sig do
        returns(
          Lithic::TokenizationApprovalRequestWebhookEvent::EventType::TaggedSymbol
        )
      end
      attr_accessor :event_type

      # Whether Lithic decisioned on the token, and if so, what the decision was.
      # APPROVED/VERIFICATION_REQUIRED/DENIED.
      sig do
        returns(
          Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision::TaggedSymbol
        )
      end
      attr_accessor :issuer_decision

      # The channel through which the tokenization was made.
      sig do
        returns(
          Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationChannel::TaggedSymbol
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

      # Results from rules that were evaluated for this tokenization
      sig { returns(T.nilable(T::Array[Lithic::TokenizationRuleResult])) }
      attr_reader :rule_results

      sig do
        params(
          rule_results: T::Array[Lithic::TokenizationRuleResult::OrHash]
        ).void
      end
      attr_writer :rule_results

      # List of reasons why the tokenization was declined
      sig do
        returns(
          T.nilable(T::Array[Lithic::TokenizationDeclineReason::TaggedSymbol])
        )
      end
      attr_reader :tokenization_decline_reasons

      sig do
        params(
          tokenization_decline_reasons:
            T::Array[Lithic::TokenizationDeclineReason::OrSymbol]
        ).void
      end
      attr_writer :tokenization_decline_reasons

      # The source of the tokenization.
      sig do
        returns(
          T.nilable(
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        )
      end
      attr_reader :tokenization_source

      sig do
        params(
          tokenization_source:
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::OrSymbol
        ).void
      end
      attr_writer :tokenization_source

      # List of reasons why two-factor authentication was required
      sig do
        returns(
          T.nilable(T::Array[Lithic::TokenizationTfaReason::TaggedSymbol])
        )
      end
      attr_reader :tokenization_tfa_reasons

      sig do
        params(
          tokenization_tfa_reasons:
            T::Array[Lithic::TokenizationTfaReason::OrSymbol]
        ).void
      end
      attr_writer :tokenization_tfa_reasons

      sig do
        params(
          account_token: String,
          card_token: String,
          created: Time,
          customer_tokenization_decision:
            T.nilable(
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::OrHash
            ),
          event_type:
            Lithic::TokenizationApprovalRequestWebhookEvent::EventType::OrSymbol,
          issuer_decision:
            Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision::OrSymbol,
          tokenization_channel:
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationChannel::OrSymbol,
          tokenization_token: String,
          wallet_decisioning_info: Lithic::WalletDecisioningInfo::OrHash,
          device: Lithic::Device::OrHash,
          digital_wallet_token_metadata:
            Lithic::DigitalWalletTokenMetadata::OrHash,
          rule_results: T::Array[Lithic::TokenizationRuleResult::OrHash],
          tokenization_decline_reasons:
            T::Array[Lithic::TokenizationDeclineReason::OrSymbol],
          tokenization_source:
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::OrSymbol,
          tokenization_tfa_reasons:
            T::Array[Lithic::TokenizationTfaReason::OrSymbol]
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the user tokenizing a card
        account_token:,
        # Unique identifier for the card being tokenized
        card_token:,
        # Indicate when the request was received from Mastercard or Visa
        created:,
        # Contains the metadata for the customer tokenization decision.
        customer_tokenization_decision:,
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
        # Results from rules that were evaluated for this tokenization
        rule_results: nil,
        # List of reasons why the tokenization was declined
        tokenization_decline_reasons: nil,
        # The source of the tokenization.
        tokenization_source: nil,
        # List of reasons why two-factor authentication was required
        tokenization_tfa_reasons: nil
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            card_token: String,
            created: Time,
            customer_tokenization_decision:
              T.nilable(
                Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision
              ),
            event_type:
              Lithic::TokenizationApprovalRequestWebhookEvent::EventType::TaggedSymbol,
            issuer_decision:
              Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision::TaggedSymbol,
            tokenization_channel:
              Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationChannel::TaggedSymbol,
            tokenization_token: String,
            wallet_decisioning_info: Lithic::WalletDecisioningInfo,
            device: Lithic::Device,
            digital_wallet_token_metadata: Lithic::DigitalWalletTokenMetadata,
            rule_results: T::Array[Lithic::TokenizationRuleResult],
            tokenization_decline_reasons:
              T::Array[Lithic::TokenizationDeclineReason::TaggedSymbol],
            tokenization_source:
              Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol,
            tokenization_tfa_reasons:
              T::Array[Lithic::TokenizationTfaReason::TaggedSymbol]
          }
        )
      end
      def to_hash
      end

      class CustomerTokenizationDecision < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision,
              Lithic::Internal::AnyHash
            )
          end

        # The outcome of the customer's decision
        sig do
          returns(
            Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
          )
        end
        attr_accessor :outcome

        # The customer's subscribed URL
        sig { returns(String) }
        attr_accessor :responder_url

        # Time in ms it took for the customer's URL to respond
        sig { returns(T.nilable(String)) }
        attr_reader :latency

        sig { params(latency: String).void }
        attr_writer :latency

        # The response code that the customer provided
        sig { returns(T.nilable(String)) }
        attr_reader :response_code

        sig { params(response_code: String).void }
        attr_writer :response_code

        # Contains the metadata for the customer tokenization decision.
        sig do
          params(
            outcome:
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::OrSymbol,
            responder_url: String,
            latency: String,
            response_code: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The outcome of the customer's decision
          outcome:,
          # The customer's subscribed URL
          responder_url:,
          # Time in ms it took for the customer's URL to respond
          latency: nil,
          # The response code that the customer provided
          response_code: nil
        )
        end

        sig do
          override.returns(
            {
              outcome:
                Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol,
              responder_url: String,
              latency: String,
              response_code: String
            }
          )
        end
        def to_hash
        end

        # The outcome of the customer's decision
        module Outcome
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
            )
          INVALID_RESPONSE =
            T.let(
              :INVALID_RESPONSE,
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
            )
          REQUIRE_ADDITIONAL_AUTHENTICATION =
            T.let(
              :REQUIRE_ADDITIONAL_AUTHENTICATION,
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
            )
          TIMEOUT =
            T.let(
              :TIMEOUT,
              Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::TokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The name of this event
      module EventType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::TokenizationApprovalRequestWebhookEvent::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOKENIZATION_APPROVAL_REQUEST =
          T.let(
            :"tokenization.approval_request",
            Lithic::TokenizationApprovalRequestWebhookEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationApprovalRequestWebhookEvent::EventType::TaggedSymbol
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
              Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision::TaggedSymbol
          )
        DENIED =
          T.let(
            :DENIED,
            Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision::TaggedSymbol
          )
        VERIFICATION_REQUIRED =
          T.let(
            :VERIFICATION_REQUIRED,
            Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationApprovalRequestWebhookEvent::IssuerDecision::TaggedSymbol
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
              Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationChannel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIGITAL_WALLET =
          T.let(
            :DIGITAL_WALLET,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationChannel::TaggedSymbol
          )
        MERCHANT =
          T.let(
            :MERCHANT,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationChannel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationChannel::TaggedSymbol
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
              Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_ON_FILE =
          T.let(
            :ACCOUNT_ON_FILE,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        CONTACTLESS_TAP =
          T.let(
            :CONTACTLESS_TAP,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        MANUAL_PROVISION =
          T.let(
            :MANUAL_PROVISION,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        PUSH_PROVISION =
          T.let(
            :PUSH_PROVISION,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        TOKEN =
          T.let(
            :TOKEN,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationApprovalRequestWebhookEvent::TokenizationSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
