# typed: strong

module Lithic
  module Models
    class DisputeV2 < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::DisputeV2, Lithic::Internal::AnyHash) }

      # Token assigned by Lithic for the dispute, in UUID format.
      sig { returns(String) }
      attr_accessor :token

      # Token for the account associated with the dispute, in UUID format.
      sig { returns(String) }
      attr_accessor :account_token

      # Token for the card used in the dispute, in UUID format.
      sig { returns(String) }
      attr_accessor :card_token

      # Identifier assigned by the network for this dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :case_id

      # When the dispute was created.
      sig { returns(Time) }
      attr_accessor :created

      # Three-letter ISO 4217 currency code.
      sig { returns(String) }
      attr_accessor :currency

      # Dispute resolution outcome
      sig { returns(T.nilable(Lithic::DisputeV2::Disposition::TaggedSymbol)) }
      attr_accessor :disposition

      # Chronological list of events that have occurred in the dispute lifecycle
      sig { returns(T::Array[Lithic::DisputeV2::Event]) }
      attr_accessor :events

      # Current breakdown of how liability is allocated for the disputed amount
      sig { returns(Lithic::DisputeV2::LiabilityAllocation) }
      attr_reader :liability_allocation

      sig do
        params(
          liability_allocation: Lithic::DisputeV2::LiabilityAllocation::OrHash
        ).void
      end
      attr_writer :liability_allocation

      sig { returns(Lithic::Merchant) }
      attr_reader :merchant

      sig { params(merchant: Lithic::Merchant::OrHash).void }
      attr_writer :merchant

      # Card network handling the dispute.
      sig { returns(Lithic::DisputeV2::Network::TaggedSymbol) }
      attr_accessor :network

      # Current status of the dispute.
      sig { returns(T.nilable(Lithic::DisputeV2::Status::TaggedSymbol)) }
      attr_accessor :status

      # Contains identifiers for the transaction and specific event within being
      # disputed; null if no transaction can be identified
      sig { returns(T.nilable(Lithic::DisputeV2::TransactionSeries)) }
      attr_reader :transaction_series

      sig do
        params(
          transaction_series:
            T.nilable(Lithic::DisputeV2::TransactionSeries::OrHash)
        ).void
      end
      attr_writer :transaction_series

      # When the dispute was last updated.
      sig { returns(Time) }
      attr_accessor :updated

      # The Dispute object tracks the progression of a dispute throughout its lifecycle.
      sig do
        params(
          token: String,
          account_token: String,
          card_token: String,
          case_id: T.nilable(String),
          created: Time,
          currency: String,
          disposition: T.nilable(Lithic::DisputeV2::Disposition::OrSymbol),
          events: T::Array[Lithic::DisputeV2::Event::OrHash],
          liability_allocation: Lithic::DisputeV2::LiabilityAllocation::OrHash,
          merchant: Lithic::Merchant::OrHash,
          network: Lithic::DisputeV2::Network::OrSymbol,
          status: T.nilable(Lithic::DisputeV2::Status::OrSymbol),
          transaction_series:
            T.nilable(Lithic::DisputeV2::TransactionSeries::OrHash),
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Token assigned by Lithic for the dispute, in UUID format.
        token:,
        # Token for the account associated with the dispute, in UUID format.
        account_token:,
        # Token for the card used in the dispute, in UUID format.
        card_token:,
        # Identifier assigned by the network for this dispute.
        case_id:,
        # When the dispute was created.
        created:,
        # Three-letter ISO 4217 currency code.
        currency:,
        # Dispute resolution outcome
        disposition:,
        # Chronological list of events that have occurred in the dispute lifecycle
        events:,
        # Current breakdown of how liability is allocated for the disputed amount
        liability_allocation:,
        merchant:,
        # Card network handling the dispute.
        network:,
        # Current status of the dispute.
        status:,
        # Contains identifiers for the transaction and specific event within being
        # disputed; null if no transaction can be identified
        transaction_series:,
        # When the dispute was last updated.
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            account_token: String,
            card_token: String,
            case_id: T.nilable(String),
            created: Time,
            currency: String,
            disposition:
              T.nilable(Lithic::DisputeV2::Disposition::TaggedSymbol),
            events: T::Array[Lithic::DisputeV2::Event],
            liability_allocation: Lithic::DisputeV2::LiabilityAllocation,
            merchant: Lithic::Merchant,
            network: Lithic::DisputeV2::Network::TaggedSymbol,
            status: T.nilable(Lithic::DisputeV2::Status::TaggedSymbol),
            transaction_series: T.nilable(Lithic::DisputeV2::TransactionSeries),
            updated: Time
          }
        )
      end
      def to_hash
      end

      # Dispute resolution outcome
      module Disposition
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::DisputeV2::Disposition) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WON = T.let(:WON, Lithic::DisputeV2::Disposition::TaggedSymbol)
        LOST = T.let(:LOST, Lithic::DisputeV2::Disposition::TaggedSymbol)
        PARTIALLY_WON =
          T.let(:PARTIALLY_WON, Lithic::DisputeV2::Disposition::TaggedSymbol)
        WITHDRAWN =
          T.let(:WITHDRAWN, Lithic::DisputeV2::Disposition::TaggedSymbol)
        DENIED = T.let(:DENIED, Lithic::DisputeV2::Disposition::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::DisputeV2::Disposition::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::DisputeV2::Event, Lithic::Internal::AnyHash)
          end

        # Unique identifier for the event, in UUID format
        sig { returns(String) }
        attr_accessor :token

        # When the event occurred
        sig { returns(Time) }
        attr_accessor :created

        # Details specific to the event type
        sig { returns(Lithic::DisputeV2::Event::Data::Variants) }
        attr_accessor :data

        # Type of event
        sig { returns(Lithic::DisputeV2::Event::Type::TaggedSymbol) }
        attr_accessor :type

        # Event that occurred in the dispute lifecycle
        sig do
          params(
            token: String,
            created: Time,
            data:
              T.any(
                Lithic::DisputeV2::Event::Data::Workflow::OrHash,
                Lithic::DisputeV2::Event::Data::Financial::OrHash,
                Lithic::DisputeV2::Event::Data::CardholderLiability::OrHash
              ),
            type: Lithic::DisputeV2::Event::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the event, in UUID format
          token:,
          # When the event occurred
          created:,
          # Details specific to the event type
          data:,
          # Type of event
          type:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              created: Time,
              data: Lithic::DisputeV2::Event::Data::Variants,
              type: Lithic::DisputeV2::Event::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Details specific to the event type
        module Data
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::DisputeV2::Event::Data::Workflow,
                Lithic::DisputeV2::Event::Data::Financial,
                Lithic::DisputeV2::Event::Data::CardholderLiability
              )
            end

          class Workflow < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::DisputeV2::Event::Data::Workflow,
                  Lithic::Internal::AnyHash
                )
              end

            # Action taken in this stage
            sig do
              returns(
                Lithic::DisputeV2::Event::Data::Workflow::Action::TaggedSymbol
              )
            end
            attr_accessor :action

            # Amount in minor units
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount

            # Dispute resolution outcome
            sig do
              returns(
                T.nilable(
                  Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                )
              )
            end
            attr_accessor :disposition

            # Reason for the action
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            # Current stage of the dispute workflow
            sig do
              returns(
                Lithic::DisputeV2::Event::Data::Workflow::Stage::TaggedSymbol
              )
            end
            attr_accessor :stage

            # Event type discriminator
            sig { returns(Symbol) }
            attr_accessor :type

            # Details specific to workflow events
            sig do
              params(
                action:
                  Lithic::DisputeV2::Event::Data::Workflow::Action::OrSymbol,
                amount: T.nilable(Integer),
                disposition:
                  T.nilable(
                    Lithic::DisputeV2::Event::Data::Workflow::Disposition::OrSymbol
                  ),
                reason: T.nilable(String),
                stage:
                  Lithic::DisputeV2::Event::Data::Workflow::Stage::OrSymbol,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Action taken in this stage
              action:,
              # Amount in minor units
              amount:,
              # Dispute resolution outcome
              disposition:,
              # Reason for the action
              reason:,
              # Current stage of the dispute workflow
              stage:,
              # Event type discriminator
              type: :WORKFLOW
            )
            end

            sig do
              override.returns(
                {
                  action:
                    Lithic::DisputeV2::Event::Data::Workflow::Action::TaggedSymbol,
                  amount: T.nilable(Integer),
                  disposition:
                    T.nilable(
                      Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                    ),
                  reason: T.nilable(String),
                  stage:
                    Lithic::DisputeV2::Event::Data::Workflow::Stage::TaggedSymbol,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            # Action taken in this stage
            module Action
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::DisputeV2::Event::Data::Workflow::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPENED =
                T.let(
                  :OPENED,
                  Lithic::DisputeV2::Event::Data::Workflow::Action::TaggedSymbol
                )
              CLOSED =
                T.let(
                  :CLOSED,
                  Lithic::DisputeV2::Event::Data::Workflow::Action::TaggedSymbol
                )
              REOPENED =
                T.let(
                  :REOPENED,
                  Lithic::DisputeV2::Event::Data::Workflow::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::DisputeV2::Event::Data::Workflow::Action::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Dispute resolution outcome
            module Disposition
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::DisputeV2::Event::Data::Workflow::Disposition
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WON =
                T.let(
                  :WON,
                  Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                )
              LOST =
                T.let(
                  :LOST,
                  Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                )
              PARTIALLY_WON =
                T.let(
                  :PARTIALLY_WON,
                  Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                )
              WITHDRAWN =
                T.let(
                  :WITHDRAWN,
                  Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                )
              DENIED =
                T.let(
                  :DENIED,
                  Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::DisputeV2::Event::Data::Workflow::Disposition::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Current stage of the dispute workflow
            module Stage
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Lithic::DisputeV2::Event::Data::Workflow::Stage)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CLAIM =
                T.let(
                  :CLAIM,
                  Lithic::DisputeV2::Event::Data::Workflow::Stage::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::DisputeV2::Event::Data::Workflow::Stage::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Financial < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::DisputeV2::Event::Data::Financial,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount in minor units
            sig { returns(Integer) }
            attr_accessor :amount

            # Direction of funds flow
            sig do
              returns(
                Lithic::DisputeV2::Event::Data::Financial::Polarity::TaggedSymbol
              )
            end
            attr_accessor :polarity

            # Stage at which the financial event occurred
            sig do
              returns(
                Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol
              )
            end
            attr_accessor :stage

            # Event type discriminator
            sig { returns(Symbol) }
            attr_accessor :type

            # Details specific to financial events
            sig do
              params(
                amount: Integer,
                polarity:
                  Lithic::DisputeV2::Event::Data::Financial::Polarity::OrSymbol,
                stage:
                  Lithic::DisputeV2::Event::Data::Financial::Stage::OrSymbol,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount in minor units
              amount:,
              # Direction of funds flow
              polarity:,
              # Stage at which the financial event occurred
              stage:,
              # Event type discriminator
              type: :FINANCIAL
            )
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  polarity:
                    Lithic::DisputeV2::Event::Data::Financial::Polarity::TaggedSymbol,
                  stage:
                    Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            # Direction of funds flow
            module Polarity
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::DisputeV2::Event::Data::Financial::Polarity
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT =
                T.let(
                  :CREDIT,
                  Lithic::DisputeV2::Event::Data::Financial::Polarity::TaggedSymbol
                )
              DEBIT =
                T.let(
                  :DEBIT,
                  Lithic::DisputeV2::Event::Data::Financial::Polarity::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::DisputeV2::Event::Data::Financial::Polarity::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Stage at which the financial event occurred
            module Stage
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::DisputeV2::Event::Data::Financial::Stage
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGEBACK =
                T.let(
                  :CHARGEBACK,
                  Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol
                )
              REPRESENTMENT =
                T.let(
                  :REPRESENTMENT,
                  Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol
                )
              PREARBITRATION =
                T.let(
                  :PREARBITRATION,
                  Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol
                )
              ARBITRATION =
                T.let(
                  :ARBITRATION,
                  Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol
                )
              COLLABORATION =
                T.let(
                  :COLLABORATION,
                  Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::DisputeV2::Event::Data::Financial::Stage::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CardholderLiability < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::DisputeV2::Event::Data::CardholderLiability,
                  Lithic::Internal::AnyHash
                )
              end

            # Action taken regarding cardholder liability
            sig do
              returns(
                Lithic::DisputeV2::Event::Data::CardholderLiability::Action::TaggedSymbol
              )
            end
            attr_accessor :action

            # Amount in minor units
            sig { returns(Integer) }
            attr_accessor :amount

            # Reason for the action
            sig { returns(String) }
            attr_accessor :reason

            # Event type discriminator
            sig { returns(Symbol) }
            attr_accessor :type

            # Details specific to cardholder liability events
            sig do
              params(
                action:
                  Lithic::DisputeV2::Event::Data::CardholderLiability::Action::OrSymbol,
                amount: Integer,
                reason: String,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Action taken regarding cardholder liability
              action:,
              # Amount in minor units
              amount:,
              # Reason for the action
              reason:,
              # Event type discriminator
              type: :CARDHOLDER_LIABILITY
            )
            end

            sig do
              override.returns(
                {
                  action:
                    Lithic::DisputeV2::Event::Data::CardholderLiability::Action::TaggedSymbol,
                  amount: Integer,
                  reason: String,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            # Action taken regarding cardholder liability
            module Action
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::DisputeV2::Event::Data::CardholderLiability::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PROVISIONAL_CREDIT_GRANTED =
                T.let(
                  :PROVISIONAL_CREDIT_GRANTED,
                  Lithic::DisputeV2::Event::Data::CardholderLiability::Action::TaggedSymbol
                )
              PROVISIONAL_CREDIT_REVERSED =
                T.let(
                  :PROVISIONAL_CREDIT_REVERSED,
                  Lithic::DisputeV2::Event::Data::CardholderLiability::Action::TaggedSymbol
                )
              WRITTEN_OFF =
                T.let(
                  :WRITTEN_OFF,
                  Lithic::DisputeV2::Event::Data::CardholderLiability::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::DisputeV2::Event::Data::CardholderLiability::Action::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(T::Array[Lithic::DisputeV2::Event::Data::Variants])
          end
          def self.variants
          end
        end

        # Type of event
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::DisputeV2::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKFLOW =
            T.let(:WORKFLOW, Lithic::DisputeV2::Event::Type::TaggedSymbol)
          FINANCIAL =
            T.let(:FINANCIAL, Lithic::DisputeV2::Event::Type::TaggedSymbol)
          CARDHOLDER_LIABILITY =
            T.let(
              :CARDHOLDER_LIABILITY,
              Lithic::DisputeV2::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::DisputeV2::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class LiabilityAllocation < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::DisputeV2::LiabilityAllocation,
              Lithic::Internal::AnyHash
            )
          end

        # The amount that has been denied to the cardholder
        sig { returns(Integer) }
        attr_accessor :denied_amount

        # The initial amount disputed
        sig { returns(Integer) }
        attr_accessor :original_amount

        # The amount that has been recovered from the merchant through the dispute process
        sig { returns(Integer) }
        attr_accessor :recovered_amount

        # Any disputed amount that is still outstanding, i.e. has not been recovered,
        # written off, or denied
        sig { returns(Integer) }
        attr_accessor :remaining_amount

        # The amount the issuer has chosen to write off
        sig { returns(Integer) }
        attr_accessor :written_off_amount

        # Current breakdown of how liability is allocated for the disputed amount
        sig do
          params(
            denied_amount: Integer,
            original_amount: Integer,
            recovered_amount: Integer,
            remaining_amount: Integer,
            written_off_amount: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount that has been denied to the cardholder
          denied_amount:,
          # The initial amount disputed
          original_amount:,
          # The amount that has been recovered from the merchant through the dispute process
          recovered_amount:,
          # Any disputed amount that is still outstanding, i.e. has not been recovered,
          # written off, or denied
          remaining_amount:,
          # The amount the issuer has chosen to write off
          written_off_amount:
        )
        end

        sig do
          override.returns(
            {
              denied_amount: Integer,
              original_amount: Integer,
              recovered_amount: Integer,
              remaining_amount: Integer,
              written_off_amount: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Card network handling the dispute.
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::DisputeV2::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VISA = T.let(:VISA, Lithic::DisputeV2::Network::TaggedSymbol)
        MASTERCARD =
          T.let(:MASTERCARD, Lithic::DisputeV2::Network::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::DisputeV2::Network::TaggedSymbol])
        end
        def self.values
        end
      end

      # Current status of the dispute.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::DisputeV2::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:OPEN, Lithic::DisputeV2::Status::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::DisputeV2::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::DisputeV2::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      class TransactionSeries < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::DisputeV2::TransactionSeries,
              Lithic::Internal::AnyHash
            )
          end

        # Token of the specific event in the original transaction being disputed, in UUID
        # format; null if no event can be identified
        sig { returns(T.nilable(String)) }
        attr_accessor :related_transaction_event_token

        # Token of the original transaction being disputed, in UUID format
        sig { returns(String) }
        attr_accessor :related_transaction_token

        # The type of transaction series associating the dispute and the original
        # transaction. Always set to DISPUTE
        sig do
          returns(Lithic::DisputeV2::TransactionSeries::Type::TaggedSymbol)
        end
        attr_accessor :type

        # Contains identifiers for the transaction and specific event within being
        # disputed; null if no transaction can be identified
        sig do
          params(
            related_transaction_event_token: T.nilable(String),
            related_transaction_token: String,
            type: Lithic::DisputeV2::TransactionSeries::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Token of the specific event in the original transaction being disputed, in UUID
          # format; null if no event can be identified
          related_transaction_event_token:,
          # Token of the original transaction being disputed, in UUID format
          related_transaction_token:,
          # The type of transaction series associating the dispute and the original
          # transaction. Always set to DISPUTE
          type:
        )
        end

        sig do
          override.returns(
            {
              related_transaction_event_token: T.nilable(String),
              related_transaction_token: String,
              type: Lithic::DisputeV2::TransactionSeries::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of transaction series associating the dispute and the original
        # transaction. Always set to DISPUTE
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::DisputeV2::TransactionSeries::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISPUTE =
            T.let(
              :DISPUTE,
              Lithic::DisputeV2::TransactionSeries::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::DisputeV2::TransactionSeries::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
