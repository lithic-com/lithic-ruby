# typed: strong

module Lithic
  module Models
    class FinancialAccountUpdateStatusParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Status of the financial account
      sig { returns(Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol)
          .returns(Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol)
      end
      def status=(_)
      end

      # Reason for the financial account status change
      sig { returns(T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol)) }
      def status_change_reason
      end

      sig do
        params(_: T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol))
          .returns(T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol))
      end
      def status_change_reason=(_)
      end

      sig do
        params(
          status: Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol,
          status_change_reason: T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol),
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(status:, status_change_reason:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              status: Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol,
              status_change_reason: T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol),
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Status of the financial account
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status::TaggedSymbol) }

        OPEN = T.let(:OPEN, Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol)
        SUSPENDED = T.let(:SUSPENDED, Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol)
      end

      # Reason for the financial account status change
      module StatusChangeReason
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::TaggedSymbol) }

        CHARGED_OFF_FRAUD =
          T.let(
            :CHARGED_OFF_FRAUD,
            Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol
          )
        END_USER_REQUEST =
          T.let(:END_USER_REQUEST, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol)
        BANK_REQUEST =
          T.let(:BANK_REQUEST, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol)
        CHARGED_OFF_DELINQUENT =
          T.let(
            :CHARGED_OFF_DELINQUENT,
            Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason::OrSymbol
          )
      end
    end
  end
end
