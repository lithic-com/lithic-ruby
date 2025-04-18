# typed: strong

module Lithic
  module Models
    class FinancialAccountUpdateStatusParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Status of the financial account
      sig { returns(Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol) }
      attr_accessor :status

      # Substatus for the financial account
      sig { returns(T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::OrSymbol)) }
      attr_accessor :substatus

      sig do
        params(
          status: Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol,
          substatus: T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::OrSymbol),
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(status:, substatus:, request_options: {}); end

      sig do
        override
          .returns(
            {
              status: Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol,
              substatus: T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::OrSymbol),
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # Status of the financial account
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:OPEN, Lithic::Models::FinancialAccountUpdateStatusParams::Status::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::FinancialAccountUpdateStatusParams::Status::TaggedSymbol)
        SUSPENDED = T.let(:SUSPENDED, Lithic::Models::FinancialAccountUpdateStatusParams::Status::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::FinancialAccountUpdateStatusParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::FinancialAccountUpdateStatusParams::Status::TaggedSymbol]) }
        def self.values; end
      end

      # Substatus for the financial account
      module Substatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGED_OFF_FRAUD =
          T.let(:CHARGED_OFF_FRAUD, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol)
        END_USER_REQUEST =
          T.let(:END_USER_REQUEST, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol)
        BANK_REQUEST =
          T.let(:BANK_REQUEST, Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol)
        CHARGED_OFF_DELINQUENT =
          T.let(
            :CHARGED_OFF_DELINQUENT,
            Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol
          )

        sig { override.returns(T::Array[Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
