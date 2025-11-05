# typed: strong

module Lithic
  module Models
    class Dispute < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Dispute, Lithic::Internal::AnyHash) }

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
      sig { returns(T.nilable(Lithic::Dispute::Disposition::OrSymbol)) }
      attr_accessor :disposition

      # Chronological list of events that have occurred in the dispute lifecycle
      sig { returns(T::Array[Lithic::Dispute::Event]) }
      attr_accessor :events

      # Current breakdown of how liability is allocated for the disputed amount
      sig { returns(Lithic::Dispute::LiabilityAllocation) }
      attr_reader :liability_allocation

      sig do
        params(
          liability_allocation: Lithic::Dispute::LiabilityAllocation::OrHash
        ).void
      end
      attr_writer :liability_allocation

      sig { returns(Lithic::Dispute::Merchant) }
      attr_reader :merchant

      sig { params(merchant: Lithic::Dispute::Merchant::OrHash).void }
      attr_writer :merchant

      # Card network handling the dispute.
      sig { returns(Lithic::Dispute::Network::OrSymbol) }
      attr_accessor :network

      # Current status of the dispute.
      sig { returns(T.nilable(Lithic::Dispute::Status::OrSymbol)) }
      attr_accessor :status

      # Contains identifiers for the transaction and specific event within being
      # disputed; null if no transaction can be identified
      sig { returns(T.nilable(Lithic::Dispute::TransactionSeries)) }
      attr_reader :transaction_series

      sig do
        params(
          transaction_series:
            T.nilable(Lithic::Dispute::TransactionSeries::OrHash)
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
          disposition: T.nilable(Lithic::Dispute::Disposition::OrSymbol),
          events: T::Array[Lithic::Dispute::Event::OrHash],
          liability_allocation: Lithic::Dispute::LiabilityAllocation::OrHash,
          merchant: Lithic::Dispute::Merchant::OrHash,
          network: Lithic::Dispute::Network::OrSymbol,
          status: T.nilable(Lithic::Dispute::Status::OrSymbol),
          transaction_series:
            T.nilable(Lithic::Dispute::TransactionSeries::OrHash),
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
            disposition: T.nilable(Lithic::Dispute::Disposition::OrSymbol),
            events: T::Array[Lithic::Dispute::Event],
            liability_allocation: Lithic::Dispute::LiabilityAllocation,
            merchant: Lithic::Dispute::Merchant,
            network: Lithic::Dispute::Network::OrSymbol,
            status: T.nilable(Lithic::Dispute::Status::OrSymbol),
            transaction_series: T.nilable(Lithic::Dispute::TransactionSeries),
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
          T.type_alias { T.all(Symbol, Lithic::Dispute::Disposition) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WON = T.let(:WON, Lithic::Dispute::Disposition::TaggedSymbol)
        LOST = T.let(:LOST, Lithic::Dispute::Disposition::TaggedSymbol)
        PARTIALLY_WON =
          T.let(:PARTIALLY_WON, Lithic::Dispute::Disposition::TaggedSymbol)
        WITHDRAWN =
          T.let(:WITHDRAWN, Lithic::Dispute::Disposition::TaggedSymbol)
        DENIED = T.let(:DENIED, Lithic::Dispute::Disposition::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Dispute::Disposition::TaggedSymbol])
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Dispute::Event, Lithic::Internal::AnyHash)
          end

        # Unique identifier for the event, in UUID format
        sig { returns(String) }
        attr_accessor :token

        # When the event occurred
        sig { returns(Time) }
        attr_accessor :created

        # Details specific to the event type
        sig do
          returns(
            T.any(
              Lithic::Dispute::Event::Data::WorkflowEventData,
              Lithic::Dispute::Event::Data::FinancialEventData,
              Lithic::Dispute::Event::Data::CardholderLiabilityEventData
            )
          )
        end
        attr_accessor :data

        # Type of event
        sig { returns(Lithic::Dispute::Event::Type::OrSymbol) }
        attr_accessor :type

        # Event that occurred in the dispute lifecycle
        sig do
          params(
            token: String,
            created: Time,
            data:
              T.any(
                Lithic::Dispute::Event::Data::WorkflowEventData::OrHash,
                Lithic::Dispute::Event::Data::FinancialEventData::OrHash,
                Lithic::Dispute::Event::Data::CardholderLiabilityEventData::OrHash
              ),
            type: Lithic::Dispute::Event::Type::OrSymbol
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
              data:
                T.any(
                  Lithic::Dispute::Event::Data::WorkflowEventData,
                  Lithic::Dispute::Event::Data::FinancialEventData,
                  Lithic::Dispute::Event::Data::CardholderLiabilityEventData
                ),
              type: Lithic::Dispute::Event::Type::OrSymbol
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
                Lithic::Dispute::Event::Data::WorkflowEventData,
                Lithic::Dispute::Event::Data::FinancialEventData,
                Lithic::Dispute::Event::Data::CardholderLiabilityEventData
              )
            end

          class WorkflowEventData < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Dispute::Event::Data::WorkflowEventData,
                  Lithic::Internal::AnyHash
                )
              end

            # Action taken in this stage
            sig do
              returns(
                Lithic::Dispute::Event::Data::WorkflowEventData::Action::OrSymbol
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
                  Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::OrSymbol
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
                Lithic::Dispute::Event::Data::WorkflowEventData::Stage::OrSymbol
              )
            end
            attr_accessor :stage

            # Details specific to workflow events
            sig do
              params(
                action:
                  Lithic::Dispute::Event::Data::WorkflowEventData::Action::OrSymbol,
                amount: T.nilable(Integer),
                disposition:
                  T.nilable(
                    Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::OrSymbol
                  ),
                reason: T.nilable(String),
                stage:
                  Lithic::Dispute::Event::Data::WorkflowEventData::Stage::OrSymbol
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
              stage:
            )
            end

            sig do
              override.returns(
                {
                  action:
                    Lithic::Dispute::Event::Data::WorkflowEventData::Action::OrSymbol,
                  amount: T.nilable(Integer),
                  disposition:
                    T.nilable(
                      Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::OrSymbol
                    ),
                  reason: T.nilable(String),
                  stage:
                    Lithic::Dispute::Event::Data::WorkflowEventData::Stage::OrSymbol
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
                    Lithic::Dispute::Event::Data::WorkflowEventData::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPENED =
                T.let(
                  :OPENED,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Action::TaggedSymbol
                )
              CLOSED =
                T.let(
                  :CLOSED,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Action::TaggedSymbol
                )
              REOPENED =
                T.let(
                  :REOPENED,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Dispute::Event::Data::WorkflowEventData::Action::TaggedSymbol
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
                    Lithic::Dispute::Event::Data::WorkflowEventData::Disposition
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WON =
                T.let(
                  :WON,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::TaggedSymbol
                )
              LOST =
                T.let(
                  :LOST,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::TaggedSymbol
                )
              PARTIALLY_WON =
                T.let(
                  :PARTIALLY_WON,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::TaggedSymbol
                )
              WITHDRAWN =
                T.let(
                  :WITHDRAWN,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::TaggedSymbol
                )
              DENIED =
                T.let(
                  :DENIED,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Dispute::Event::Data::WorkflowEventData::Disposition::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Lithic::Dispute::Event::Data::WorkflowEventData::Stage
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CLAIM =
                T.let(
                  :CLAIM,
                  Lithic::Dispute::Event::Data::WorkflowEventData::Stage::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Dispute::Event::Data::WorkflowEventData::Stage::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FinancialEventData < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Dispute::Event::Data::FinancialEventData,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount in minor units
            sig { returns(Integer) }
            attr_accessor :amount

            # Direction of funds flow
            sig do
              returns(
                Lithic::Dispute::Event::Data::FinancialEventData::Polarity::OrSymbol
              )
            end
            attr_accessor :polarity

            # Stage at which the financial event occurred
            sig do
              returns(
                Lithic::Dispute::Event::Data::FinancialEventData::Stage::OrSymbol
              )
            end
            attr_accessor :stage

            # Details specific to financial events
            sig do
              params(
                amount: Integer,
                polarity:
                  Lithic::Dispute::Event::Data::FinancialEventData::Polarity::OrSymbol,
                stage:
                  Lithic::Dispute::Event::Data::FinancialEventData::Stage::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount in minor units
              amount:,
              # Direction of funds flow
              polarity:,
              # Stage at which the financial event occurred
              stage:
            )
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  polarity:
                    Lithic::Dispute::Event::Data::FinancialEventData::Polarity::OrSymbol,
                  stage:
                    Lithic::Dispute::Event::Data::FinancialEventData::Stage::OrSymbol
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
                    Lithic::Dispute::Event::Data::FinancialEventData::Polarity
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT =
                T.let(
                  :CREDIT,
                  Lithic::Dispute::Event::Data::FinancialEventData::Polarity::TaggedSymbol
                )
              DEBIT =
                T.let(
                  :DEBIT,
                  Lithic::Dispute::Event::Data::FinancialEventData::Polarity::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Dispute::Event::Data::FinancialEventData::Polarity::TaggedSymbol
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
                    Lithic::Dispute::Event::Data::FinancialEventData::Stage
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGEBACK =
                T.let(
                  :CHARGEBACK,
                  Lithic::Dispute::Event::Data::FinancialEventData::Stage::TaggedSymbol
                )
              REPRESENTMENT =
                T.let(
                  :REPRESENTMENT,
                  Lithic::Dispute::Event::Data::FinancialEventData::Stage::TaggedSymbol
                )
              PREARBITRATION =
                T.let(
                  :PREARBITRATION,
                  Lithic::Dispute::Event::Data::FinancialEventData::Stage::TaggedSymbol
                )
              ARBITRATION =
                T.let(
                  :ARBITRATION,
                  Lithic::Dispute::Event::Data::FinancialEventData::Stage::TaggedSymbol
                )
              COLLABORATION =
                T.let(
                  :COLLABORATION,
                  Lithic::Dispute::Event::Data::FinancialEventData::Stage::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Dispute::Event::Data::FinancialEventData::Stage::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CardholderLiabilityEventData < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Dispute::Event::Data::CardholderLiabilityEventData,
                  Lithic::Internal::AnyHash
                )
              end

            # Action taken regarding cardholder liability
            sig do
              returns(
                Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action::OrSymbol
              )
            end
            attr_accessor :action

            # Amount in minor units
            sig { returns(Integer) }
            attr_accessor :amount

            # Reason for the action
            sig { returns(String) }
            attr_accessor :reason

            # Details specific to cardholder liability events
            sig do
              params(
                action:
                  Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action::OrSymbol,
                amount: Integer,
                reason: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Action taken regarding cardholder liability
              action:,
              # Amount in minor units
              amount:,
              # Reason for the action
              reason:
            )
            end

            sig do
              override.returns(
                {
                  action:
                    Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action::OrSymbol,
                  amount: Integer,
                  reason: String
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
                    Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PROVISIONAL_CREDIT_GRANTED =
                T.let(
                  :PROVISIONAL_CREDIT_GRANTED,
                  Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action::TaggedSymbol
                )
              PROVISIONAL_CREDIT_REVERSED =
                T.let(
                  :PROVISIONAL_CREDIT_REVERSED,
                  Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action::TaggedSymbol
                )
              WRITTEN_OFF =
                T.let(
                  :WRITTEN_OFF,
                  Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Dispute::Event::Data::CardholderLiabilityEventData::Action::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(T::Array[Lithic::Dispute::Event::Data::Variants])
          end
          def self.variants
          end
        end

        # Type of event
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Dispute::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKFLOW =
            T.let(:WORKFLOW, Lithic::Dispute::Event::Type::TaggedSymbol)
          FINANCIAL =
            T.let(:FINANCIAL, Lithic::Dispute::Event::Type::TaggedSymbol)
          CARDHOLDER_LIABILITY =
            T.let(
              :CARDHOLDER_LIABILITY,
              Lithic::Dispute::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Dispute::Event::Type::TaggedSymbol]
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
              Lithic::Dispute::LiabilityAllocation,
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

      class Merchant < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Dispute::Merchant, Lithic::Internal::AnyHash)
          end

        # Unique alphanumeric identifier for the payment card acceptor (merchant).
        sig { returns(String) }
        attr_accessor :acceptor_id

        # Unique numeric identifier of the acquiring institution.
        sig { returns(String) }
        attr_accessor :acquiring_institution_id

        # City of card acceptor. Note that in many cases, particularly in card-not-present
        # transactions, merchants may send through a phone number or URL in this field.
        sig { returns(String) }
        attr_accessor :city

        # Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
        # alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
        sig { returns(String) }
        attr_accessor :country

        # Short description of card acceptor.
        sig { returns(String) }
        attr_accessor :descriptor

        # Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
        # used to classify a business by the types of goods or services it provides.
        sig { returns(String) }
        attr_accessor :mcc

        # Geographic state of card acceptor.
        sig { returns(String) }
        attr_accessor :state

        sig do
          params(
            acceptor_id: String,
            acquiring_institution_id: String,
            city: String,
            country: String,
            descriptor: String,
            mcc: String,
            state: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique alphanumeric identifier for the payment card acceptor (merchant).
          acceptor_id:,
          # Unique numeric identifier of the acquiring institution.
          acquiring_institution_id:,
          # City of card acceptor. Note that in many cases, particularly in card-not-present
          # transactions, merchants may send through a phone number or URL in this field.
          city:,
          # Country or entity of card acceptor. Possible values are: (1) all ISO 3166-1
          # alpha-3 country codes, (2) QZZ for Kosovo, and (3) ANT for Netherlands Antilles.
          country:,
          # Short description of card acceptor.
          descriptor:,
          # Merchant category code (MCC). A four-digit number listed in ISO 18245. An MCC is
          # used to classify a business by the types of goods or services it provides.
          mcc:,
          # Geographic state of card acceptor.
          state:
        )
        end

        sig do
          override.returns(
            {
              acceptor_id: String,
              acquiring_institution_id: String,
              city: String,
              country: String,
              descriptor: String,
              mcc: String,
              state: String
            }
          )
        end
        def to_hash
        end
      end

      # Card network handling the dispute.
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Dispute::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VISA = T.let(:VISA, Lithic::Dispute::Network::TaggedSymbol)
        MASTERCARD = T.let(:MASTERCARD, Lithic::Dispute::Network::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Dispute::Network::TaggedSymbol])
        end
        def self.values
        end
      end

      # Current status of the dispute.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Dispute::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:OPEN, Lithic::Dispute::Status::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Dispute::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Dispute::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      class TransactionSeries < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Dispute::TransactionSeries, Lithic::Internal::AnyHash)
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
        sig { returns(Lithic::Dispute::TransactionSeries::Type::OrSymbol) }
        attr_accessor :type

        # Contains identifiers for the transaction and specific event within being
        # disputed; null if no transaction can be identified
        sig do
          params(
            related_transaction_event_token: T.nilable(String),
            related_transaction_token: String,
            type: Lithic::Dispute::TransactionSeries::Type::OrSymbol
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
              type: Lithic::Dispute::TransactionSeries::Type::OrSymbol
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
              T.all(Symbol, Lithic::Dispute::TransactionSeries::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISPUTE =
            T.let(
              :DISPUTE,
              Lithic::Dispute::TransactionSeries::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Dispute::TransactionSeries::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
