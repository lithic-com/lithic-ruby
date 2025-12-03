# typed: strong

module Lithic
  module Models
    class InternalTransactionAPI < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::InternalTransactionAPI, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :token

      sig { returns(Lithic::InternalTransactionAPI::Category::OrSymbol) }
      attr_accessor :category

      sig { returns(Time) }
      attr_accessor :created

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :descriptor

      sig { returns(T::Array[Lithic::InternalTransactionAPI::Event]) }
      attr_accessor :events

      sig { returns(Integer) }
      attr_accessor :pending_amount

      sig { returns(Lithic::InternalTransactionAPI::Result::OrSymbol) }
      attr_accessor :result

      sig { returns(Integer) }
      attr_accessor :settled_amount

      sig { returns(Lithic::InternalTransactionAPI::Status::OrSymbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          category: Lithic::InternalTransactionAPI::Category::OrSymbol,
          created: Time,
          currency: String,
          descriptor: String,
          events: T::Array[Lithic::InternalTransactionAPI::Event::OrHash],
          pending_amount: Integer,
          result: Lithic::InternalTransactionAPI::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::InternalTransactionAPI::Status::OrSymbol,
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        token:,
        category:,
        created:,
        currency:,
        descriptor:,
        events:,
        pending_amount:,
        result:,
        settled_amount:,
        status:,
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category: Lithic::InternalTransactionAPI::Category::OrSymbol,
            created: Time,
            currency: String,
            descriptor: String,
            events: T::Array[Lithic::InternalTransactionAPI::Event],
            pending_amount: Integer,
            result: Lithic::InternalTransactionAPI::Result::OrSymbol,
            settled_amount: Integer,
            status: Lithic::InternalTransactionAPI::Status::OrSymbol,
            updated: Time
          }
        )
      end
      def to_hash
      end

      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::InternalTransactionAPI::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTERNAL =
          T.let(
            :INTERNAL,
            Lithic::InternalTransactionAPI::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::InternalTransactionAPI::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::InternalTransactionAPI::Event,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :token

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created

        sig { returns(Lithic::InternalTransactionAPI::Event::Result::OrSymbol) }
        attr_accessor :result

        sig { returns(Lithic::InternalTransactionAPI::Event::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            result: Lithic::InternalTransactionAPI::Event::Result::OrSymbol,
            type: Lithic::InternalTransactionAPI::Event::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(token:, amount:, created:, result:, type:)
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              created: Time,
              result: Lithic::InternalTransactionAPI::Event::Result::OrSymbol,
              type: Lithic::InternalTransactionAPI::Event::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::InternalTransactionAPI::Event::Result)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::InternalTransactionAPI::Event::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::InternalTransactionAPI::Event::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::InternalTransactionAPI::Event::Result::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::InternalTransactionAPI::Event::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL_ADJUSTMENT =
            T.let(
              :INTERNAL_ADJUSTMENT,
              Lithic::InternalTransactionAPI::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::InternalTransactionAPI::Event::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::InternalTransactionAPI::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::InternalTransactionAPI::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::InternalTransactionAPI::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::InternalTransactionAPI::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::InternalTransactionAPI::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:PENDING, Lithic::InternalTransactionAPI::Status::TaggedSymbol)
        SETTLED =
          T.let(:SETTLED, Lithic::InternalTransactionAPI::Status::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::InternalTransactionAPI::Status::TaggedSymbol)
        REVERSED =
          T.let(:REVERSED, Lithic::InternalTransactionAPI::Status::TaggedSymbol)
        CANCELED =
          T.let(:CANCELED, Lithic::InternalTransactionAPI::Status::TaggedSymbol)
        RETURNED =
          T.let(:RETURNED, Lithic::InternalTransactionAPI::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::InternalTransactionAPI::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
