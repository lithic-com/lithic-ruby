# typed: strong

module Lithic
  module Models
    class FinancialAccountUpdateStatusParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Status of the financial account
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Reason for the financial account status change
      sig { returns(T.nilable(Symbol)) }
      def status_change_reason
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def status_change_reason=(_)
      end

      sig do
        params(
          status: Symbol,
          status_change_reason: T.nilable(Symbol),
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(status:, status_change_reason:, request_options: {})
      end

      sig do
        override
          .returns(
            {status: Symbol, status_change_reason: T.nilable(Symbol), request_options: Lithic::RequestOptions}
          )
      end
      def to_hash
      end

      # Status of the financial account
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        OPEN = :OPEN
        CLOSED = :CLOSED
        SUSPENDED = :SUSPENDED
        PENDING = :PENDING
      end

      # Reason for the financial account status change
      class StatusChangeReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CHARGED_OFF_FRAUD = :CHARGED_OFF_FRAUD
        END_USER_REQUEST = :END_USER_REQUEST
        BANK_REQUEST = :BANK_REQUEST
        CHARGED_OFF_DELINQUENT = :CHARGED_OFF_DELINQUENT
      end
    end
  end
end
