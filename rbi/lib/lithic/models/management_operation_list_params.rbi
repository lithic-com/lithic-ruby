# typed: strong

module Lithic
  module Models
    class ManagementOperationListParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

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

      # Management operation category to be returned.
      sig { returns(T.nilable(Lithic::Models::ManagementOperationListParams::Category::OrSymbol)) }
      def category
      end

      sig do
        params(_: Lithic::Models::ManagementOperationListParams::Category::OrSymbol)
          .returns(Lithic::Models::ManagementOperationListParams::Category::OrSymbol)
      end
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

      # Globally unique identifier for the financial account. Accepted type dependent on
      #   the program's use case.
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

      # A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      def starting_after
      end

      sig { params(_: String).returns(String) }
      def starting_after=(_)
      end

      # Management operation status to be returned.
      sig { returns(T.nilable(Lithic::Models::ManagementOperationListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Lithic::Models::ManagementOperationListParams::Status::OrSymbol)
          .returns(Lithic::Models::ManagementOperationListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          begin_: Time,
          business_account_token: String,
          category: Lithic::Models::ManagementOperationListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::Models::ManagementOperationListParams::Status::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        begin_: nil,
        business_account_token: nil,
        category: nil,
        end_: nil,
        ending_before: nil,
        financial_account_token: nil,
        page_size: nil,
        starting_after: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              begin_: Time,
              business_account_token: String,
              category: Lithic::Models::ManagementOperationListParams::Category::OrSymbol,
              end_: Time,
              ending_before: String,
              financial_account_token: String,
              page_size: Integer,
              starting_after: String,
              status: Lithic::Models::ManagementOperationListParams::Status::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Management operation category to be returned.
      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationListParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationListParams::Category::TaggedSymbol) }

        MANAGEMENT_FEE =
          T.let(:MANAGEMENT_FEE, Lithic::Models::ManagementOperationListParams::Category::OrSymbol)
        MANAGEMENT_DISPUTE =
          T.let(:MANAGEMENT_DISPUTE, Lithic::Models::ManagementOperationListParams::Category::OrSymbol)
        MANAGEMENT_REWARD =
          T.let(:MANAGEMENT_REWARD, Lithic::Models::ManagementOperationListParams::Category::OrSymbol)
        MANAGEMENT_ADJUSTMENT =
          T.let(:MANAGEMENT_ADJUSTMENT, Lithic::Models::ManagementOperationListParams::Category::OrSymbol)
      end

      # Management operation status to be returned.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationListParams::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::ManagementOperationListParams::Status::OrSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ManagementOperationListParams::Status::OrSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationListParams::Status::OrSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ManagementOperationListParams::Status::OrSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ManagementOperationListParams::Status::OrSymbol)
      end
    end
  end
end
