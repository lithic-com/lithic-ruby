# typed: strong

module Lithic
  module Models
    class DigitalWalletTokenizationResultWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::DigitalWalletTokenizationResultWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # Account token
      sig { returns(String) }
      attr_accessor :account_token

      # Card token
      sig { returns(String) }
      attr_accessor :card_token

      # Created date
      sig { returns(Time) }
      attr_accessor :created

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The result of the tokenization request.
      sig do
        returns(
          Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails
        )
      end
      attr_reader :tokenization_result_details

      sig do
        params(
          tokenization_result_details:
            Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::OrHash
        ).void
      end
      attr_writer :tokenization_result_details

      # Tokenization token
      sig { returns(String) }
      attr_accessor :tokenization_token

      sig do
        params(
          account_token: String,
          card_token: String,
          created: Time,
          tokenization_result_details:
            Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::OrHash,
          tokenization_token: String,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Account token
        account_token:,
        # Card token
        card_token:,
        # Created date
        created:,
        # The result of the tokenization request.
        tokenization_result_details:,
        # Tokenization token
        tokenization_token:,
        # The type of event that occurred.
        event_type: :"digital_wallet.tokenization_result"
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            card_token: String,
            created: Time,
            event_type: Symbol,
            tokenization_result_details:
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails,
            tokenization_token: String
          }
        )
      end
      def to_hash
      end

      class TokenizationResultDetails < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails,
              Lithic::Internal::AnyHash
            )
          end

        # Lithic's tokenization decision.
        sig { returns(String) }
        attr_accessor :issuer_decision

        # List of reasons why the tokenization was declined
        sig do
          returns(
            T::Array[
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            ]
          )
        end
        attr_accessor :tokenization_decline_reasons

        # The customer's tokenization decision if applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_decision

        # Results from rules that were evaluated for this tokenization
        sig { returns(T.nilable(T::Array[Lithic::TokenizationRuleResult])) }
        attr_reader :rule_results

        sig do
          params(
            rule_results: T::Array[Lithic::TokenizationRuleResult::OrHash]
          ).void
        end
        attr_writer :rule_results

        # An RFC 3339 timestamp indicating when the tokenization succeeded.
        sig { returns(T.nilable(Time)) }
        attr_accessor :token_activated_date_time

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

        # The wallet's recommended decision.
        sig { returns(T.nilable(String)) }
        attr_accessor :wallet_decision

        # The result of the tokenization request.
        sig do
          params(
            issuer_decision: String,
            tokenization_decline_reasons:
              T::Array[
                Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::OrSymbol
              ],
            customer_decision: T.nilable(String),
            rule_results: T::Array[Lithic::TokenizationRuleResult::OrHash],
            token_activated_date_time: T.nilable(Time),
            tokenization_tfa_reasons:
              T::Array[Lithic::TokenizationTfaReason::OrSymbol],
            wallet_decision: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Lithic's tokenization decision.
          issuer_decision:,
          # List of reasons why the tokenization was declined
          tokenization_decline_reasons:,
          # The customer's tokenization decision if applicable.
          customer_decision: nil,
          # Results from rules that were evaluated for this tokenization
          rule_results: nil,
          # An RFC 3339 timestamp indicating when the tokenization succeeded.
          token_activated_date_time: nil,
          # List of reasons why two-factor authentication was required
          tokenization_tfa_reasons: nil,
          # The wallet's recommended decision.
          wallet_decision: nil
        )
        end

        sig do
          override.returns(
            {
              issuer_decision: String,
              tokenization_decline_reasons:
                T::Array[
                  Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
                ],
              customer_decision: T.nilable(String),
              rule_results: T::Array[Lithic::TokenizationRuleResult],
              token_activated_date_time: T.nilable(Time),
              tokenization_tfa_reasons:
                T::Array[Lithic::TokenizationTfaReason::TaggedSymbol],
              wallet_decision: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module TokenizationDeclineReason
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_SCORE_1 =
            T.let(
              :ACCOUNT_SCORE_1,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          ALL_WALLET_DECLINE_REASONS_PRESENT =
            T.let(
              :ALL_WALLET_DECLINE_REASONS_PRESENT,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          CARD_EXPIRY_MONTH_MISMATCH =
            T.let(
              :CARD_EXPIRY_MONTH_MISMATCH,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          CARD_EXPIRY_YEAR_MISMATCH =
            T.let(
              :CARD_EXPIRY_YEAR_MISMATCH,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          CARD_INVALID_STATE =
            T.let(
              :CARD_INVALID_STATE,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          CUSTOMER_RED_PATH =
            T.let(
              :CUSTOMER_RED_PATH,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          CVC_MISMATCH =
            T.let(
              :CVC_MISMATCH,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          DEVICE_SCORE_1 =
            T.let(
              :DEVICE_SCORE_1,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          GENERIC_DECLINE =
            T.let(
              :GENERIC_DECLINE,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          INVALID_CUSTOMER_RESPONSE =
            T.let(
              :INVALID_CUSTOMER_RESPONSE,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          NETWORK_FAILURE =
            T.let(
              :NETWORK_FAILURE,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )
          WALLET_RECOMMENDED_DECISION_RED =
            T.let(
              :WALLET_RECOMMENDED_DECISION_RED,
              Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
