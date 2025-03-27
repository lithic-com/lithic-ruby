# typed: strong

module Lithic
  module Models
    class SettlementReport < Lithic::BaseModel
      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # Three-digit alphabetic ISO 4217 code. (This field is deprecated and will be
      #   removed in a future version of the API.)
      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T::Array[Lithic::Models::SettlementSummaryDetails]) }
      attr_accessor :details

      # The total gross amount of disputes settlements. (This field is deprecated and
      #   will be removed in a future version of the API. To compute total amounts, Lithic
      #   recommends that customers sum the relevant settlement amounts found within
      #   `details`.)
      sig { returns(Integer) }
      attr_accessor :disputes_gross_amount

      # The total amount of interchange. (This field is deprecated and will be removed
      #   in a future version of the API. To compute total amounts, Lithic recommends that
      #   customers sum the relevant settlement amounts found within `details`.)
      sig { returns(Integer) }
      attr_accessor :interchange_gross_amount

      # Indicates that all data expected on the given report date is available.
      sig { returns(T::Boolean) }
      attr_accessor :is_complete

      # Total amount of gross other fees outside of interchange. (This field is
      #   deprecated and will be removed in a future version of the API. To compute total
      #   amounts, Lithic recommends that customers sum the relevant settlement amounts
      #   found within `details`.)
      sig { returns(Integer) }
      attr_accessor :other_fees_gross_amount

      # Date of when the report was first generated.
      sig { returns(String) }
      attr_accessor :report_date

      # The total net amount of cash moved. (net value of settled_gross_amount,
      #   interchange, fees). (This field is deprecated and will be removed in a future
      #   version of the API. To compute total amounts, Lithic recommends that customers
      #   sum the relevant settlement amounts found within `details`.)
      sig { returns(Integer) }
      attr_accessor :settled_net_amount

      # The total amount of settlement impacting transactions (excluding interchange,
      #   fees, and disputes). (This field is deprecated and will be removed in a future
      #   version of the API. To compute total amounts, Lithic recommends that customers
      #   sum the relevant settlement amounts found within `details`.)
      sig { returns(Integer) }
      attr_accessor :transactions_gross_amount

      # Date and time when the transaction first occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

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
