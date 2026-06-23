# typed: strong

module Lithic
  module Models
    class ClaimUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::ClaimUpdatedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # Unique identifier for the claim, in UUID format
      sig { returns(String) }
      attr_accessor :token

      # Token for the account holder that filed the claim
      sig { returns(T.nilable(String)) }
      attr_accessor :account_holder_token

      # Token for the account associated with the claim
      sig { returns(T.nilable(String)) }
      attr_accessor :account_token

      # Tokens for the cards associated with the disputed transactions
      sig { returns(T::Array[String]) }
      attr_accessor :card_tokens

      # When the claim was created
      sig { returns(Time) }
      attr_accessor :created

      # Transactions included in this claim
      sig do
        returns(T::Array[Lithic::ClaimUpdatedWebhookEvent::DisputedTransaction])
      end
      attr_accessor :disputed_transactions

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # Requirements that must be fulfilled before the claim can be submitted
      sig do
        returns(
          T::Array[
            Lithic::ClaimUpdatedWebhookEvent::OutstandingRequirement::TaggedSymbol
          ]
        )
      end
      attr_accessor :outstanding_requirements

      # Dispute reason code provided when creating the claim
      sig { returns(Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol) }
      attr_accessor :reason

      # Current lifecycle status of the claim
      sig { returns(Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol) }
      attr_accessor :status

      # When the claim was submitted. Null until the claim reaches `SUBMITTED` status
      sig { returns(T.nilable(Time)) }
      attr_accessor :submitted

      # When the claim was last updated
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          account_holder_token: T.nilable(String),
          account_token: T.nilable(String),
          card_tokens: T::Array[String],
          created: Time,
          disputed_transactions:
            T::Array[
              Lithic::ClaimUpdatedWebhookEvent::DisputedTransaction::OrHash
            ],
          outstanding_requirements:
            T::Array[
              Lithic::ClaimUpdatedWebhookEvent::OutstandingRequirement::OrSymbol
            ],
          reason: Lithic::ClaimUpdatedWebhookEvent::Reason::OrSymbol,
          status: Lithic::ClaimUpdatedWebhookEvent::Status::OrSymbol,
          submitted: T.nilable(Time),
          updated: Time,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the claim, in UUID format
        token:,
        # Token for the account holder that filed the claim
        account_holder_token:,
        # Token for the account associated with the claim
        account_token:,
        # Tokens for the cards associated with the disputed transactions
        card_tokens:,
        # When the claim was created
        created:,
        # Transactions included in this claim
        disputed_transactions:,
        # Requirements that must be fulfilled before the claim can be submitted
        outstanding_requirements:,
        # Dispute reason code provided when creating the claim
        reason:,
        # Current lifecycle status of the claim
        status:,
        # When the claim was submitted. Null until the claim reaches `SUBMITTED` status
        submitted:,
        # When the claim was last updated
        updated:,
        # The type of event that occurred.
        event_type: :"claim.updated"
      )
      end

      sig do
        override.returns(
          {
            token: String,
            account_holder_token: T.nilable(String),
            account_token: T.nilable(String),
            card_tokens: T::Array[String],
            created: Time,
            disputed_transactions:
              T::Array[Lithic::ClaimUpdatedWebhookEvent::DisputedTransaction],
            event_type: Symbol,
            outstanding_requirements:
              T::Array[
                Lithic::ClaimUpdatedWebhookEvent::OutstandingRequirement::TaggedSymbol
              ],
            reason: Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol,
            status: Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol,
            submitted: T.nilable(Time),
            updated: Time
          }
        )
      end
      def to_hash
      end

      class DisputedTransaction < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::ClaimUpdatedWebhookEvent::DisputedTransaction,
              Lithic::Internal::AnyHash
            )
          end

        # Tokens for the specific events within the transaction being disputed. Lithic
        # creates one dispute per event token
        sig { returns(T::Array[String]) }
        attr_accessor :event_tokens

        # Token for the transaction being disputed, in UUID format
        sig { returns(String) }
        attr_accessor :transaction_token

        # A transaction included in a claim, along with the specific events being
        # disputed.
        sig do
          params(
            event_tokens: T::Array[String],
            transaction_token: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Tokens for the specific events within the transaction being disputed. Lithic
          # creates one dispute per event token
          event_tokens:,
          # Token for the transaction being disputed, in UUID format
          transaction_token:
        )
        end

        sig do
          override.returns(
            { event_tokens: T::Array[String], transaction_token: String }
          )
        end
        def to_hash
        end
      end

      module OutstandingRequirement
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::ClaimUpdatedWebhookEvent::OutstandingRequirement
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUESTIONNAIRE =
          T.let(
            :QUESTIONNAIRE,
            Lithic::ClaimUpdatedWebhookEvent::OutstandingRequirement::TaggedSymbol
          )
        DOCUMENTS =
          T.let(
            :DOCUMENTS,
            Lithic::ClaimUpdatedWebhookEvent::OutstandingRequirement::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ClaimUpdatedWebhookEvent::OutstandingRequirement::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Dispute reason code provided when creating the claim
      module Reason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ClaimUpdatedWebhookEvent::Reason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_NOT_PRESENT =
          T.let(
            :CARD_NOT_PRESENT,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        CARD_LOST =
          T.let(
            :CARD_LOST,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        CARD_STOLEN =
          T.let(
            :CARD_STOLEN,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        CARD_NEVER_RECEIVED =
          T.let(
            :CARD_NEVER_RECEIVED,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        COUNTERFEIT =
          T.let(
            :COUNTERFEIT,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        ACCOUNT_TAKEOVER =
          T.let(
            :ACCOUNT_TAKEOVER,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        PRODUCT_NOT_RECEIVED =
          T.let(
            :PRODUCT_NOT_RECEIVED,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        NOT_AS_DESCRIBED =
          T.let(
            :NOT_AS_DESCRIBED,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        CREDIT_NOT_PROCESSED =
          T.let(
            :CREDIT_NOT_PROCESSED,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        CANCELLED_RECURRING =
          T.let(
            :CANCELLED_RECURRING,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        PAID_BY_OTHER_MEANS =
          T.let(
            :PAID_BY_OTHER_MEANS,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        DUPLICATE_CHARGE =
          T.let(
            :DUPLICATE_CHARGE,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        LATE_PRESENTMENT =
          T.let(
            :LATE_PRESENTMENT,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        INCORRECT_TRANSACTION_CODE =
          T.let(
            :INCORRECT_TRANSACTION_CODE,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        NO_AUTHORIZATION =
          T.let(
            :NO_AUTHORIZATION,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        INCORRECT_AMOUNT =
          T.let(
            :INCORRECT_AMOUNT,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        ATM_CASH_NOT_DISPENSED =
          T.let(
            :ATM_CASH_NOT_DISPENSED,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        ATM_DEPOSIT_WRONG_AMOUNT =
          T.let(
            :ATM_DEPOSIT_WRONG_AMOUNT,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )
        ATM_DEPOSIT_MISSING =
          T.let(
            :ATM_DEPOSIT_MISSING,
            Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ClaimUpdatedWebhookEvent::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Current lifecycle status of the claim
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ClaimUpdatedWebhookEvent::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INITIALIZING =
          T.let(
            :INITIALIZING,
            Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol
          )
        AWAITING_INFO =
          T.let(
            :AWAITING_INFO,
            Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol
          )
        SUBMITTED =
          T.let(
            :SUBMITTED,
            Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol
          )
        RESOLVED =
          T.let(
            :RESOLVED,
            Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol
          )
        ABANDONED =
          T.let(
            :ABANDONED,
            Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ClaimUpdatedWebhookEvent::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
