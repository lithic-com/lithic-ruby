# typed: strong

module Lithic
  module Models
    class Payment < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::Payment, Lithic::Internal::AnyHash) }

      # Unique identifier for the transaction
      sig { returns(String) }
      attr_accessor :token

      # Transaction category
      sig { returns(Lithic::Payment::Category::TaggedSymbol) }
      attr_accessor :category

      # ISO 8601 timestamp of when the transaction was created
      sig { returns(Time) }
      attr_accessor :created

      # Transaction descriptor
      sig { returns(String) }
      attr_accessor :descriptor

      # Transfer direction
      sig { returns(Lithic::Payment::Direction::TaggedSymbol) }
      attr_accessor :direction

      # List of transaction events
      sig { returns(T::Array[Lithic::Payment::Event]) }
      attr_accessor :events

      # PAYMENT - Payment Transaction
      sig { returns(Symbol) }
      attr_accessor :family

      # Financial account token
      sig { returns(String) }
      attr_accessor :financial_account_token

      # Transfer method
      sig { returns(Lithic::Payment::Method::TaggedSymbol) }
      attr_accessor :method_

      # Method-specific attributes
      sig { returns(Lithic::Payment::MethodAttributes::Variants) }
      attr_accessor :method_attributes

      # Pending amount in cents
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # Related account tokens for the transaction
      sig { returns(Lithic::Payment::RelatedAccountTokens) }
      attr_reader :related_account_tokens

      sig do
        params(
          related_account_tokens: Lithic::Payment::RelatedAccountTokens::OrHash
        ).void
      end
      attr_writer :related_account_tokens

      # Transaction result
      sig { returns(Lithic::Payment::Result::TaggedSymbol) }
      attr_accessor :result

      # Settled amount in cents
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Transaction source
      sig { returns(Lithic::Payment::Source::TaggedSymbol) }
      attr_accessor :source

      # The status of the transaction
      sig { returns(Lithic::Payment::Status::TaggedSymbol) }
      attr_accessor :status

      # ISO 8601 timestamp of when the transaction was last updated
      sig { returns(Time) }
      attr_accessor :updated

      # Currency of the transaction in ISO 4217 format
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Expected release date for the transaction
      sig { returns(T.nilable(Date)) }
      attr_accessor :expected_release_date

      # External bank account token
      sig { returns(T.nilable(String)) }
      attr_accessor :external_bank_account_token

      sig { returns(T.nilable(Lithic::Payment::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: Lithic::Payment::Type::OrSymbol).void }
      attr_writer :type

      # User-defined identifier
      sig { returns(T.nilable(String)) }
      attr_accessor :user_defined_id

      # Payment transaction
      sig do
        params(
          token: String,
          category: Lithic::Payment::Category::OrSymbol,
          created: Time,
          descriptor: String,
          direction: Lithic::Payment::Direction::OrSymbol,
          events: T::Array[Lithic::Payment::Event::OrHash],
          financial_account_token: String,
          method_: Lithic::Payment::Method::OrSymbol,
          method_attributes:
            T.any(
              Lithic::Payment::MethodAttributes::ACHMethodAttributes::OrHash,
              Lithic::Payment::MethodAttributes::WireMethodAttributes::OrHash
            ),
          pending_amount: Integer,
          related_account_tokens: Lithic::Payment::RelatedAccountTokens::OrHash,
          result: Lithic::Payment::Result::OrSymbol,
          settled_amount: Integer,
          source: Lithic::Payment::Source::OrSymbol,
          status: Lithic::Payment::Status::OrSymbol,
          updated: Time,
          currency: String,
          expected_release_date: T.nilable(Date),
          external_bank_account_token: T.nilable(String),
          type: Lithic::Payment::Type::OrSymbol,
          user_defined_id: T.nilable(String),
          family: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the transaction
        token:,
        # Transaction category
        category:,
        # ISO 8601 timestamp of when the transaction was created
        created:,
        # Transaction descriptor
        descriptor:,
        # Transfer direction
        direction:,
        # List of transaction events
        events:,
        # Financial account token
        financial_account_token:,
        # Transfer method
        method_:,
        # Method-specific attributes
        method_attributes:,
        # Pending amount in cents
        pending_amount:,
        # Related account tokens for the transaction
        related_account_tokens:,
        # Transaction result
        result:,
        # Settled amount in cents
        settled_amount:,
        # Transaction source
        source:,
        # The status of the transaction
        status:,
        # ISO 8601 timestamp of when the transaction was last updated
        updated:,
        # Currency of the transaction in ISO 4217 format
        currency: nil,
        # Expected release date for the transaction
        expected_release_date: nil,
        # External bank account token
        external_bank_account_token: nil,
        type: nil,
        # User-defined identifier
        user_defined_id: nil,
        # PAYMENT - Payment Transaction
        family: :PAYMENT
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category: Lithic::Payment::Category::TaggedSymbol,
            created: Time,
            descriptor: String,
            direction: Lithic::Payment::Direction::TaggedSymbol,
            events: T::Array[Lithic::Payment::Event],
            family: Symbol,
            financial_account_token: String,
            method_: Lithic::Payment::Method::TaggedSymbol,
            method_attributes: Lithic::Payment::MethodAttributes::Variants,
            pending_amount: Integer,
            related_account_tokens: Lithic::Payment::RelatedAccountTokens,
            result: Lithic::Payment::Result::TaggedSymbol,
            settled_amount: Integer,
            source: Lithic::Payment::Source::TaggedSymbol,
            status: Lithic::Payment::Status::TaggedSymbol,
            updated: Time,
            currency: String,
            expected_release_date: T.nilable(Date),
            external_bank_account_token: T.nilable(String),
            type: Lithic::Payment::Type::TaggedSymbol,
            user_defined_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Transaction category
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH = T.let(:ACH, Lithic::Payment::Category::TaggedSymbol)
        BALANCE_OR_FUNDING =
          T.let(:BALANCE_OR_FUNDING, Lithic::Payment::Category::TaggedSymbol)
        FEE = T.let(:FEE, Lithic::Payment::Category::TaggedSymbol)
        REWARD = T.let(:REWARD, Lithic::Payment::Category::TaggedSymbol)
        ADJUSTMENT = T.let(:ADJUSTMENT, Lithic::Payment::Category::TaggedSymbol)
        DERECOGNITION =
          T.let(:DERECOGNITION, Lithic::Payment::Category::TaggedSymbol)
        DISPUTE = T.let(:DISPUTE, Lithic::Payment::Category::TaggedSymbol)
        CARD = T.let(:CARD, Lithic::Payment::Category::TaggedSymbol)
        EXTERNAL_ACH =
          T.let(:EXTERNAL_ACH, Lithic::Payment::Category::TaggedSymbol)
        EXTERNAL_CHECK =
          T.let(:EXTERNAL_CHECK, Lithic::Payment::Category::TaggedSymbol)
        EXTERNAL_TRANSFER =
          T.let(:EXTERNAL_TRANSFER, Lithic::Payment::Category::TaggedSymbol)
        EXTERNAL_WIRE =
          T.let(:EXTERNAL_WIRE, Lithic::Payment::Category::TaggedSymbol)
        MANAGEMENT_ADJUSTMENT =
          T.let(:MANAGEMENT_ADJUSTMENT, Lithic::Payment::Category::TaggedSymbol)
        MANAGEMENT_DISPUTE =
          T.let(:MANAGEMENT_DISPUTE, Lithic::Payment::Category::TaggedSymbol)
        MANAGEMENT_FEE =
          T.let(:MANAGEMENT_FEE, Lithic::Payment::Category::TaggedSymbol)
        MANAGEMENT_REWARD =
          T.let(:MANAGEMENT_REWARD, Lithic::Payment::Category::TaggedSymbol)
        MANAGEMENT_DISBURSEMENT =
          T.let(
            :MANAGEMENT_DISBURSEMENT,
            Lithic::Payment::Category::TaggedSymbol
          )
        PROGRAM_FUNDING =
          T.let(:PROGRAM_FUNDING, Lithic::Payment::Category::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Category::TaggedSymbol])
        end
        def self.values
        end
      end

      # Transfer direction
      module Direction
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Payment::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT = T.let(:CREDIT, Lithic::Payment::Direction::TaggedSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Payment::Direction::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Direction::TaggedSymbol])
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::Payment::Event, Lithic::Internal::AnyHash)
          end

        # Globally unique identifier.
        sig { returns(String) }
        attr_accessor :token

        # Amount of the financial event that has been settled in the currency's smallest
        # unit (e.g., cents).
        sig { returns(Integer) }
        attr_accessor :amount

        # Date and time when the financial event occurred. UTC time zone.
        sig { returns(Time) }
        attr_accessor :created

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        sig { returns(Lithic::Payment::Event::Result::TaggedSymbol) }
        attr_accessor :result

        # Event types:
        #
        # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
        #   approval/release from an ACH hold.
        # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
        # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
        # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
        #   the Federal Reserve.
        # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
        # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
        #   available balance.
        # - `ACH_ORIGINATION_REJECTED` - ACH origination was rejected and not sent to the
        #   Federal Reserve.
        # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
        # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
        # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
        #   balance.
        # - `ACH_RETURN_INITIATED` - ACH initiated return for an ACH receipt.
        # - `ACH_RETURN_PROCESSED` - ACH receipt returned by the Receiving Depository
        #   Financial Institution.
        # - `ACH_RETURN_SETTLED` - ACH return settled by the Receiving Depository
        #   Financial Institution.
        # - `ACH_RETURN_REJECTED` - ACH return was rejected by the Receiving Depository
        #   Financial Institution.
        sig { returns(Lithic::Payment::Event::Type::TaggedSymbol) }
        attr_accessor :type

        # More detailed reasons for the event
        sig do
          returns(
            T.nilable(
              T::Array[Lithic::Payment::Event::DetailedResult::TaggedSymbol]
            )
          )
        end
        attr_reader :detailed_results

        sig do
          params(
            detailed_results:
              T::Array[Lithic::Payment::Event::DetailedResult::OrSymbol]
          ).void
        end
        attr_writer :detailed_results

        # Payment Event
        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::Payment::Event::Result::OrSymbol,
            type: Lithic::Payment::Event::Type::OrSymbol,
            detailed_results:
              T::Array[Lithic::Payment::Event::DetailedResult::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier.
          token:,
          # Amount of the financial event that has been settled in the currency's smallest
          # unit (e.g., cents).
          amount:,
          # Date and time when the financial event occurred. UTC time zone.
          created:,
          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          result:,
          # Event types:
          #
          # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
          #   approval/release from an ACH hold.
          # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
          # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
          # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
          #   the Federal Reserve.
          # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
          # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
          #   available balance.
          # - `ACH_ORIGINATION_REJECTED` - ACH origination was rejected and not sent to the
          #   Federal Reserve.
          # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
          # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
          # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
          #   balance.
          # - `ACH_RETURN_INITIATED` - ACH initiated return for an ACH receipt.
          # - `ACH_RETURN_PROCESSED` - ACH receipt returned by the Receiving Depository
          #   Financial Institution.
          # - `ACH_RETURN_SETTLED` - ACH return settled by the Receiving Depository
          #   Financial Institution.
          # - `ACH_RETURN_REJECTED` - ACH return was rejected by the Receiving Depository
          #   Financial Institution.
          type:,
          # More detailed reasons for the event
          detailed_results: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              created: Time,
              result: Lithic::Payment::Event::Result::TaggedSymbol,
              type: Lithic::Payment::Event::Type::TaggedSymbol,
              detailed_results:
                T::Array[Lithic::Payment::Event::DetailedResult::TaggedSymbol]
            }
          )
        end
        def to_hash
        end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Payment::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(:APPROVED, Lithic::Payment::Event::Result::TaggedSymbol)
          DECLINED =
            T.let(:DECLINED, Lithic::Payment::Event::Result::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Lithic::Payment::Event::Result::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Event types:
        #
        # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
        #   approval/release from an ACH hold.
        # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
        # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
        # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
        #   the Federal Reserve.
        # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
        # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
        #   available balance.
        # - `ACH_ORIGINATION_REJECTED` - ACH origination was rejected and not sent to the
        #   Federal Reserve.
        # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
        # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
        # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
        #   balance.
        # - `ACH_RETURN_INITIATED` - ACH initiated return for an ACH receipt.
        # - `ACH_RETURN_PROCESSED` - ACH receipt returned by the Receiving Depository
        #   Financial Institution.
        # - `ACH_RETURN_SETTLED` - ACH return settled by the Receiving Depository
        #   Financial Institution.
        # - `ACH_RETURN_REJECTED` - ACH return was rejected by the Receiving Depository
        #   Financial Institution.
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Payment::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH_ORIGINATION_CANCELLED =
            T.let(
              :ACH_ORIGINATION_CANCELLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_INITIATED =
            T.let(
              :ACH_ORIGINATION_INITIATED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_PROCESSED =
            T.let(
              :ACH_ORIGINATION_PROCESSED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_REJECTED =
            T.let(
              :ACH_ORIGINATION_REJECTED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_RELEASED =
            T.let(
              :ACH_ORIGINATION_RELEASED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_REVIEWED =
            T.let(
              :ACH_ORIGINATION_REVIEWED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_ORIGINATION_SETTLED =
            T.let(
              :ACH_ORIGINATION_SETTLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RECEIPT_PROCESSED =
            T.let(
              :ACH_RECEIPT_PROCESSED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RECEIPT_RELEASED =
            T.let(
              :ACH_RECEIPT_RELEASED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RECEIPT_SETTLED =
            T.let(
              :ACH_RECEIPT_SETTLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RETURN_INITIATED =
            T.let(
              :ACH_RETURN_INITIATED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RETURN_PROCESSED =
            T.let(
              :ACH_RETURN_PROCESSED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RETURN_REJECTED =
            T.let(
              :ACH_RETURN_REJECTED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )
          ACH_RETURN_SETTLED =
            T.let(
              :ACH_RETURN_SETTLED,
              Lithic::Payment::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Payment::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::Payment::Event::DetailedResult)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          FUNDS_INSUFFICIENT =
            T.let(
              :FUNDS_INSUFFICIENT,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          ACCOUNT_INVALID =
            T.let(
              :ACCOUNT_INVALID,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_TRANSACTION_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_TRANSACTION_LIMIT_EXCEEDED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_DAILY_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_DAILY_LIMIT_EXCEEDED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )
          PROGRAM_MONTHLY_LIMIT_EXCEEDED =
            T.let(
              :PROGRAM_MONTHLY_LIMIT_EXCEEDED,
              Lithic::Payment::Event::DetailedResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::Payment::Event::DetailedResult::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Transfer method
      module Method
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_NEXT_DAY =
          T.let(:ACH_NEXT_DAY, Lithic::Payment::Method::TaggedSymbol)
        ACH_SAME_DAY =
          T.let(:ACH_SAME_DAY, Lithic::Payment::Method::TaggedSymbol)
        WIRE = T.let(:WIRE, Lithic::Payment::Method::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Method::TaggedSymbol])
        end
        def self.values
        end
      end

      # Method-specific attributes
      module MethodAttributes
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::Payment::MethodAttributes::ACHMethodAttributes,
              Lithic::Payment::MethodAttributes::WireMethodAttributes
            )
          end

        class ACHMethodAttributes < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Payment::MethodAttributes::ACHMethodAttributes,
                Lithic::Internal::AnyHash
              )
            end

          # SEC code for ACH transaction
          sig do
            returns(
              Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
            )
          end
          attr_accessor :sec_code

          # Addenda information
          sig { returns(T.nilable(String)) }
          attr_accessor :addenda

          # Company ID for the ACH transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :company_id

          # Receipt routing number
          sig { returns(T.nilable(String)) }
          attr_accessor :receipt_routing_number

          # Number of retries attempted
          sig { returns(T.nilable(Integer)) }
          attr_accessor :retries

          # Return reason code if the transaction was returned
          sig { returns(T.nilable(String)) }
          attr_accessor :return_reason_code

          # Trace numbers for the ACH transaction
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :trace_numbers

          sig { params(trace_numbers: T::Array[String]).void }
          attr_writer :trace_numbers

          sig do
            params(
              sec_code:
                Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::OrSymbol,
              addenda: T.nilable(String),
              company_id: T.nilable(String),
              receipt_routing_number: T.nilable(String),
              retries: T.nilable(Integer),
              return_reason_code: T.nilable(String),
              trace_numbers: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # SEC code for ACH transaction
            sec_code:,
            # Addenda information
            addenda: nil,
            # Company ID for the ACH transaction
            company_id: nil,
            # Receipt routing number
            receipt_routing_number: nil,
            # Number of retries attempted
            retries: nil,
            # Return reason code if the transaction was returned
            return_reason_code: nil,
            # Trace numbers for the ACH transaction
            trace_numbers: nil
          )
          end

          sig do
            override.returns(
              {
                sec_code:
                  Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol,
                addenda: T.nilable(String),
                company_id: T.nilable(String),
                receipt_routing_number: T.nilable(String),
                retries: T.nilable(Integer),
                return_reason_code: T.nilable(String),
                trace_numbers: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # SEC code for ACH transaction
          module SecCode
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CCD =
              T.let(
                :CCD,
                Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
              )
            PPD =
              T.let(
                :PPD,
                Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
              )
            WEB =
              T.let(
                :WEB,
                Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
              )
            TEL =
              T.let(
                :TEL,
                Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
              )
            CIE =
              T.let(
                :CIE,
                Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
              )
            CTX =
              T.let(
                :CTX,
                Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Payment::MethodAttributes::ACHMethodAttributes::SecCode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class WireMethodAttributes < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Payment::MethodAttributes::WireMethodAttributes,
                Lithic::Internal::AnyHash
              )
            end

          # Type of wire transfer
          sig do
            returns(
              Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
            )
          end
          attr_accessor :wire_network

          sig { returns(T.nilable(Lithic::WirePartyDetails)) }
          attr_reader :creditor

          sig { params(creditor: Lithic::WirePartyDetails::OrHash).void }
          attr_writer :creditor

          sig { returns(T.nilable(Lithic::WirePartyDetails)) }
          attr_reader :debtor

          sig { params(debtor: Lithic::WirePartyDetails::OrHash).void }
          attr_writer :debtor

          # Point to point reference identifier, as assigned by the instructing party, used
          # for tracking the message through the Fedwire system
          sig { returns(T.nilable(String)) }
          attr_accessor :message_id

          # Payment details or invoice reference
          sig { returns(T.nilable(String)) }
          attr_accessor :remittance_information

          # Type of wire message
          sig { returns(T.nilable(String)) }
          attr_reader :wire_message_type

          sig { params(wire_message_type: String).void }
          attr_writer :wire_message_type

          sig do
            params(
              wire_network:
                Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork::OrSymbol,
              creditor: Lithic::WirePartyDetails::OrHash,
              debtor: Lithic::WirePartyDetails::OrHash,
              message_id: T.nilable(String),
              remittance_information: T.nilable(String),
              wire_message_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Type of wire transfer
            wire_network:,
            creditor: nil,
            debtor: nil,
            # Point to point reference identifier, as assigned by the instructing party, used
            # for tracking the message through the Fedwire system
            message_id: nil,
            # Payment details or invoice reference
            remittance_information: nil,
            # Type of wire message
            wire_message_type: nil
          )
          end

          sig do
            override.returns(
              {
                wire_network:
                  Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol,
                creditor: Lithic::WirePartyDetails,
                debtor: Lithic::WirePartyDetails,
                message_id: T.nilable(String),
                remittance_information: T.nilable(String),
                wire_message_type: String
              }
            )
          end
          def to_hash
          end

          # Type of wire transfer
          module WireNetwork
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEDWIRE =
              T.let(
                :FEDWIRE,
                Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
              )
            SWIFT =
              T.let(
                :SWIFT,
                Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Payment::MethodAttributes::WireMethodAttributes::WireNetwork::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Lithic::Payment::MethodAttributes::Variants]
          )
        end
        def self.variants
        end
      end

      class RelatedAccountTokens < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Payment::RelatedAccountTokens,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the account
        sig { returns(T.nilable(String)) }
        attr_accessor :account_token

        # Globally unique identifier for the business account
        sig { returns(T.nilable(String)) }
        attr_accessor :business_account_token

        # Related account tokens for the transaction
        sig do
          params(
            account_token: T.nilable(String),
            business_account_token: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the account
          account_token:,
          # Globally unique identifier for the business account
          business_account_token:
        )
        end

        sig do
          override.returns(
            {
              account_token: T.nilable(String),
              business_account_token: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      # Transaction result
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Payment::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Payment::Result::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Result::TaggedSymbol])
        end
        def self.values
        end
      end

      # Transaction source
      module Source
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LITHIC = T.let(:LITHIC, Lithic::Payment::Source::TaggedSymbol)
        EXTERNAL = T.let(:EXTERNAL, Lithic::Payment::Source::TaggedSymbol)
        CUSTOMER = T.let(:CUSTOMER, Lithic::Payment::Source::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Source::TaggedSymbol])
        end
        def self.values
        end
      end

      # The status of the transaction
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:PENDING, Lithic::Payment::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Payment::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Payment::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Payment::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Payment::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Lithic::Payment::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Payment::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ORIGINATION_CREDIT =
          T.let(:ORIGINATION_CREDIT, Lithic::Payment::Type::TaggedSymbol)
        ORIGINATION_DEBIT =
          T.let(:ORIGINATION_DEBIT, Lithic::Payment::Type::TaggedSymbol)
        RECEIPT_CREDIT =
          T.let(:RECEIPT_CREDIT, Lithic::Payment::Type::TaggedSymbol)
        RECEIPT_DEBIT =
          T.let(:RECEIPT_DEBIT, Lithic::Payment::Type::TaggedSymbol)
        WIRE_INBOUND_PAYMENT =
          T.let(:WIRE_INBOUND_PAYMENT, Lithic::Payment::Type::TaggedSymbol)
        WIRE_INBOUND_ADMIN =
          T.let(:WIRE_INBOUND_ADMIN, Lithic::Payment::Type::TaggedSymbol)
        WIRE_OUTBOUND_PAYMENT =
          T.let(:WIRE_OUTBOUND_PAYMENT, Lithic::Payment::Type::TaggedSymbol)
        WIRE_OUTBOUND_ADMIN =
          T.let(:WIRE_OUTBOUND_ADMIN, Lithic::Payment::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Payment::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
