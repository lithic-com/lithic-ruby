# typed: strong

module Lithic
  module Models
    class ExternalPayment < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::ExternalPayment, Lithic::Internal::AnyHash)
        end

      # Unique identifier for the transaction
      sig { returns(String) }
      attr_accessor :token

      # ISO 8601 timestamp of when the transaction was created
      sig { returns(Time) }
      attr_accessor :created

      # The status of the transaction
      sig { returns(Lithic::ExternalPayment::Status::TaggedSymbol) }
      attr_accessor :status

      # ISO 8601 timestamp of when the transaction was last updated
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        returns(T.nilable(Lithic::ExternalPayment::Category::TaggedSymbol))
      end
      attr_reader :category

      sig { params(category: Lithic::ExternalPayment::Category::OrSymbol).void }
      attr_writer :category

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(T::Array[Lithic::ExternalPayment::Event])) }
      attr_reader :events

      sig do
        params(events: T::Array[Lithic::ExternalPayment::Event::OrHash]).void
      end
      attr_writer :events

      # EXTERNAL_PAYMENT - External Payment Response
      sig { returns(T.nilable(Lithic::ExternalPayment::Family::TaggedSymbol)) }
      attr_reader :family

      sig { params(family: Lithic::ExternalPayment::Family::OrSymbol).void }
      attr_writer :family

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      sig do
        returns(T.nilable(Lithic::ExternalPayment::PaymentType::TaggedSymbol))
      end
      attr_reader :payment_type

      sig do
        params(
          payment_type: Lithic::ExternalPayment::PaymentType::OrSymbol
        ).void
      end
      attr_writer :payment_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :pending_amount

      sig { params(pending_amount: Integer).void }
      attr_writer :pending_amount

      sig { returns(T.nilable(Lithic::ExternalPayment::Result::TaggedSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::ExternalPayment::Result::OrSymbol).void }
      attr_writer :result

      sig { returns(T.nilable(Integer)) }
      attr_reader :settled_amount

      sig { params(settled_amount: Integer).void }
      attr_writer :settled_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :user_defined_id

      sig do
        params(
          token: String,
          created: Time,
          status: Lithic::ExternalPayment::Status::OrSymbol,
          updated: Time,
          category: Lithic::ExternalPayment::Category::OrSymbol,
          currency: String,
          events: T::Array[Lithic::ExternalPayment::Event::OrHash],
          family: Lithic::ExternalPayment::Family::OrSymbol,
          financial_account_token: String,
          payment_type: Lithic::ExternalPayment::PaymentType::OrSymbol,
          pending_amount: Integer,
          result: Lithic::ExternalPayment::Result::OrSymbol,
          settled_amount: Integer,
          user_defined_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the transaction
        token:,
        # ISO 8601 timestamp of when the transaction was created
        created:,
        # The status of the transaction
        status:,
        # ISO 8601 timestamp of when the transaction was last updated
        updated:,
        category: nil,
        currency: nil,
        events: nil,
        # EXTERNAL_PAYMENT - External Payment Response
        family: nil,
        financial_account_token: nil,
        payment_type: nil,
        pending_amount: nil,
        result: nil,
        settled_amount: nil,
        user_defined_id: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            created: Time,
            status: Lithic::ExternalPayment::Status::TaggedSymbol,
            updated: Time,
            category: Lithic::ExternalPayment::Category::TaggedSymbol,
            currency: String,
            events: T::Array[Lithic::ExternalPayment::Event],
            family: Lithic::ExternalPayment::Family::TaggedSymbol,
            financial_account_token: String,
            payment_type: Lithic::ExternalPayment::PaymentType::TaggedSymbol,
            pending_amount: Integer,
            result: Lithic::ExternalPayment::Result::TaggedSymbol,
            settled_amount: Integer,
            user_defined_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The status of the transaction
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::ExternalPayment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:PENDING, Lithic::ExternalPayment::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::ExternalPayment::Status::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::ExternalPayment::Status::TaggedSymbol)
        REVERSED =
          T.let(:REVERSED, Lithic::ExternalPayment::Status::TaggedSymbol)
        CANCELED =
          T.let(:CANCELED, Lithic::ExternalPayment::Status::TaggedSymbol)
        RETURNED =
          T.let(:RETURNED, Lithic::ExternalPayment::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::ExternalPayment::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::ExternalPayment::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_WIRE =
          T.let(:EXTERNAL_WIRE, Lithic::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_ACH =
          T.let(:EXTERNAL_ACH, Lithic::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_CHECK =
          T.let(
            :EXTERNAL_CHECK,
            Lithic::ExternalPayment::Category::TaggedSymbol
          )
        EXTERNAL_TRANSFER =
          T.let(
            :EXTERNAL_TRANSFER,
            Lithic::ExternalPayment::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ExternalPayment::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::ExternalPayment::Event, Lithic::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :token

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created

        sig do
          returns(
            T::Array[
              Lithic::ExternalPayment::Event::DetailedResult::TaggedSymbol
            ]
          )
        end
        attr_accessor :detailed_results

        sig { returns(Date) }
        attr_accessor :effective_date

        sig { returns(String) }
        attr_accessor :memo

        sig { returns(Lithic::ExternalPayment::Event::Result::TaggedSymbol) }
        attr_accessor :result

        sig { returns(Lithic::ExternalPayment::Event::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results:
              T::Array[
                Lithic::ExternalPayment::Event::DetailedResult::OrSymbol
              ],
            effective_date: Date,
            memo: String,
            result: Lithic::ExternalPayment::Event::Result::OrSymbol,
            type: Lithic::ExternalPayment::Event::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          token:,
          amount:,
          created:,
          detailed_results:,
          effective_date:,
          memo:,
          result:,
          type:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              created: Time,
              detailed_results:
                T::Array[
                  Lithic::ExternalPayment::Event::DetailedResult::TaggedSymbol
                ],
              effective_date: Date,
              memo: String,
              result: Lithic::ExternalPayment::Event::Result::TaggedSymbol,
              type: Lithic::ExternalPayment::Event::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::ExternalPayment::Event::DetailedResult)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::ExternalPayment::Event::DetailedResult::TaggedSymbol
            )
          INSUFFICIENT_FUNDS =
            T.let(
              :INSUFFICIENT_FUNDS,
              Lithic::ExternalPayment::Event::DetailedResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::ExternalPayment::Event::DetailedResult::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::ExternalPayment::Event::Result)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::ExternalPayment::Event::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::ExternalPayment::Event::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::ExternalPayment::Event::Result::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::ExternalPayment::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXTERNAL_WIRE_INITIATED =
            T.let(
              :EXTERNAL_WIRE_INITIATED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_CANCELED =
            T.let(
              :EXTERNAL_WIRE_CANCELED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_SETTLED =
            T.let(
              :EXTERNAL_WIRE_SETTLED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_REVERSED =
            T.let(
              :EXTERNAL_WIRE_REVERSED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_WIRE_RELEASED =
            T.let(
              :EXTERNAL_WIRE_RELEASED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_INITIATED =
            T.let(
              :EXTERNAL_ACH_INITIATED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_CANCELED =
            T.let(
              :EXTERNAL_ACH_CANCELED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_SETTLED =
            T.let(
              :EXTERNAL_ACH_SETTLED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_REVERSED =
            T.let(
              :EXTERNAL_ACH_REVERSED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_ACH_RELEASED =
            T.let(
              :EXTERNAL_ACH_RELEASED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_INITIATED =
            T.let(
              :EXTERNAL_TRANSFER_INITIATED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_CANCELED =
            T.let(
              :EXTERNAL_TRANSFER_CANCELED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_SETTLED =
            T.let(
              :EXTERNAL_TRANSFER_SETTLED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_REVERSED =
            T.let(
              :EXTERNAL_TRANSFER_REVERSED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_TRANSFER_RELEASED =
            T.let(
              :EXTERNAL_TRANSFER_RELEASED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_INITIATED =
            T.let(
              :EXTERNAL_CHECK_INITIATED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_CANCELED =
            T.let(
              :EXTERNAL_CHECK_CANCELED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_SETTLED =
            T.let(
              :EXTERNAL_CHECK_SETTLED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_REVERSED =
            T.let(
              :EXTERNAL_CHECK_REVERSED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )
          EXTERNAL_CHECK_RELEASED =
            T.let(
              :EXTERNAL_CHECK_RELEASED,
              Lithic::ExternalPayment::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::ExternalPayment::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # EXTERNAL_PAYMENT - External Payment Response
      module Family
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::ExternalPayment::Family) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_PAYMENT =
          T.let(
            :EXTERNAL_PAYMENT,
            Lithic::ExternalPayment::Family::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ExternalPayment::Family::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PaymentType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::ExternalPayment::PaymentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(:DEPOSIT, Lithic::ExternalPayment::PaymentType::TaggedSymbol)
        WITHDRAWAL =
          T.let(:WITHDRAWAL, Lithic::ExternalPayment::PaymentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::ExternalPayment::PaymentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::ExternalPayment::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::ExternalPayment::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::ExternalPayment::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::ExternalPayment::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
