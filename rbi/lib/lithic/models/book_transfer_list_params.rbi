# typed: strong

module Lithic
  module Models
    class BookTransferListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      def begin_
      end

      sig { params(_: Time).returns(Time) }
      def begin_=(_)
      end

      sig { returns(T.nilable(String)) }
      def business_account_token
      end

      sig { params(_: String).returns(String) }
      def business_account_token=(_)
      end

      # Book Transfer category to be returned.
      sig { returns(T.nilable(Symbol)) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      # Date string in RFC 3339 format. Only entries created before the specified time
      #   will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      def end_
      end

      sig { params(_: Time).returns(Time) }
      def end_=(_)
      end

      # A cursor representing an item's token before which a page of results should end.
      #   Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      def ending_before
      end

      sig { params(_: String).returns(String) }
      def ending_before=(_)
      end

      # Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      sig { returns(T.nilable(String)) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      # Book transfer result to be returned.
      sig { returns(T.nilable(Symbol)) }
      def result
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result=(_)
      end

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      def starting_after
      end

      sig { params(_: String).returns(String) }
      def starting_after=(_)
      end

      # Book transfer status to be returned.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Symbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Symbol,
          starting_after: String,
          status: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_token: nil,
        begin_: nil,
        business_account_token: nil,
        category: nil,
        end_: nil,
        ending_before: nil,
        financial_account_token: nil,
        page_size: nil,
        result: nil,
        starting_after: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_token: String,
              begin_: Time,
              business_account_token: String,
              category: Symbol,
              end_: Time,
              ending_before: String,
              financial_account_token: String,
              page_size: Integer,
              result: Symbol,
              starting_after: String,
              status: Symbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Book Transfer category to be returned.
      class Category < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        FEE = :FEE
        REWARD = :REWARD
        ADJUSTMENT = :ADJUSTMENT
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        INTERNAL = :INTERNAL
      end

      # Book transfer result to be returned.
      class Result < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        APPROVED = :APPROVED
        DECLINED = :DECLINED
      end

      # Book transfer status to be returned.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DECLINED = :DECLINED
        SETTLED = :SETTLED
      end
    end
  end
end
