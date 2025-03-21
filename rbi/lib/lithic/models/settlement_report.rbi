# typed: strong

module Lithic
  module Models
    class SettlementReport < Lithic::BaseModel
      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # 3-character alphabetic ISO 4217 code. (This field is deprecated and will be
      #   removed in a future version of the API.)
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T::Array[Lithic::Models::SettlementSummaryDetails]) }
      def details
      end

      sig do
        params(_: T::Array[Lithic::Models::SettlementSummaryDetails])
          .returns(T::Array[Lithic::Models::SettlementSummaryDetails])
      end
      def details=(_)
      end

      # The total gross amount of disputes settlements. (This field is deprecated and
      #   will be removed in a future version of the API. To compute total amounts, Lithic
      #   recommends that customers sum the relevant settlement amounts found within
      #   `details`.)
      sig { returns(Integer) }
      def disputes_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def disputes_gross_amount=(_)
      end

      # The total amount of interchange. (This field is deprecated and will be removed
      #   in a future version of the API. To compute total amounts, Lithic recommends that
      #   customers sum the relevant settlement amounts found within `details`.)
      sig { returns(Integer) }
      def interchange_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def interchange_gross_amount=(_)
      end

      # Indicates that all data expected on the given report date is available.
      sig { returns(T::Boolean) }
      def is_complete
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_complete=(_)
      end

      # Total amount of gross other fees outside of interchange. (This field is
      #   deprecated and will be removed in a future version of the API. To compute total
      #   amounts, Lithic recommends that customers sum the relevant settlement amounts
      #   found within `details`.)
      sig { returns(Integer) }
      def other_fees_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def other_fees_gross_amount=(_)
      end

      # Date of when the report was first generated.
      sig { returns(String) }
      def report_date
      end

      sig { params(_: String).returns(String) }
      def report_date=(_)
      end

      # The total net amount of cash moved. (net value of settled_gross_amount,
      #   interchange, fees). (This field is deprecated and will be removed in a future
      #   version of the API. To compute total amounts, Lithic recommends that customers
      #   sum the relevant settlement amounts found within `details`.)
      sig { returns(Integer) }
      def settled_net_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_net_amount=(_)
      end

      # The total amount of settlement impacting transactions (excluding interchange,
      #   fees, and disputes). (This field is deprecated and will be removed in a future
      #   version of the API. To compute total amounts, Lithic recommends that customers
      #   sum the relevant settlement amounts found within `details`.)
      sig { returns(Integer) }
      def transactions_gross_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def transactions_gross_amount=(_)
      end

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig do
        params(
          created: Time,
          currency: String,
          details: T::Array[T.any(Lithic::Models::SettlementSummaryDetails, Lithic::Util::AnyHash)],
          disputes_gross_amount: Integer,
          interchange_gross_amount: Integer,
          is_complete: T::Boolean,
          other_fees_gross_amount: Integer,
          report_date: String,
          settled_net_amount: Integer,
          transactions_gross_amount: Integer,
          updated: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        created:,
        currency:,
        details:,
        disputes_gross_amount:,
        interchange_gross_amount:,
        is_complete:,
        other_fees_gross_amount:,
        report_date:,
        settled_net_amount:,
        transactions_gross_amount:,
        updated:
      )
      end

      sig do
        override
          .returns(
            {
              created: Time,
              currency: String,
              details: T::Array[Lithic::Models::SettlementSummaryDetails],
              disputes_gross_amount: Integer,
              interchange_gross_amount: Integer,
              is_complete: T::Boolean,
              other_fees_gross_amount: Integer,
              report_date: String,
              settled_net_amount: Integer,
              transactions_gross_amount: Integer,
              updated: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
