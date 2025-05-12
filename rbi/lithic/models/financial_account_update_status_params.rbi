# typed: strong

module Lithic
  module Models
    class FinancialAccountUpdateStatusParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::FinancialAccountUpdateStatusParams,
            Lithic::Internal::AnyHash
          )
        end

      # Status of the financial account
      sig do
        returns(Lithic::FinancialAccountUpdateStatusParams::Status::OrSymbol)
      end
      attr_accessor :status

      # Substatus for the financial account
      sig do
        returns(
          T.nilable(
            Lithic::FinancialAccountUpdateStatusParams::Substatus::OrSymbol
          )
        )
      end
      attr_accessor :substatus

      sig do
        params(
          status: Lithic::FinancialAccountUpdateStatusParams::Status::OrSymbol,
          substatus:
            T.nilable(
              Lithic::FinancialAccountUpdateStatusParams::Substatus::OrSymbol
            ),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of the financial account
        status:,
        # Substatus for the financial account
        substatus:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status:
              Lithic::FinancialAccountUpdateStatusParams::Status::OrSymbol,
            substatus:
              T.nilable(
                Lithic::FinancialAccountUpdateStatusParams::Substatus::OrSymbol
              ),
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status of the financial account
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::FinancialAccountUpdateStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN =
          T.let(
            :OPEN,
            Lithic::FinancialAccountUpdateStatusParams::Status::TaggedSymbol
          )
        CLOSED =
          T.let(
            :CLOSED,
            Lithic::FinancialAccountUpdateStatusParams::Status::TaggedSymbol
          )
        SUSPENDED =
          T.let(
            :SUSPENDED,
            Lithic::FinancialAccountUpdateStatusParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :PENDING,
            Lithic::FinancialAccountUpdateStatusParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::FinancialAccountUpdateStatusParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Substatus for the financial account
      module Substatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::FinancialAccountUpdateStatusParams::Substatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGED_OFF_FRAUD =
          T.let(
            :CHARGED_OFF_FRAUD,
            Lithic::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol
          )
        END_USER_REQUEST =
          T.let(
            :END_USER_REQUEST,
            Lithic::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol
          )
        BANK_REQUEST =
          T.let(
            :BANK_REQUEST,
            Lithic::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol
          )
        CHARGED_OFF_DELINQUENT =
          T.let(
            :CHARGED_OFF_DELINQUENT,
            Lithic::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
