# typed: strong

module Lithic
  module Models
    class ManagementOperationListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Date string in RFC 3339 format. Only entries created after the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # Management operation category to be returned.
      sig { returns(T.nilable(Lithic::Models::ManagementOperationListParams::Category::OrSymbol)) }
      attr_reader :category

      sig { params(category: Lithic::Models::ManagementOperationListParams::Category::OrSymbol).void }
      attr_writer :category

      # Date string in RFC 3339 format. Only entries created before the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_

      sig { params(end_: Time).void }
      attr_writer :end_

      # A cursor representing an item's token before which a page of results should end.
      # Used to retrieve the previous page of results before this item.
      sig { returns(T.nilable(String)) }
      attr_reader :ending_before

      sig { params(ending_before: String).void }
      attr_writer :ending_before

      # Globally unique identifier for the financial account. Accepted type dependent on
      # the program's use case.
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Management operation status to be returned.
      sig { returns(T.nilable(Lithic::Models::ManagementOperationListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::ManagementOperationListParams::Status::OrSymbol).void }
      attr_writer :status

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
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      # Management operation category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationListParams::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANAGEMENT_FEE =
          T.let(:MANAGEMENT_FEE, Lithic::Models::ManagementOperationListParams::Category::TaggedSymbol)
        MANAGEMENT_DISPUTE =
          T.let(:MANAGEMENT_DISPUTE, Lithic::Models::ManagementOperationListParams::Category::TaggedSymbol)
        MANAGEMENT_REWARD =
          T.let(:MANAGEMENT_REWARD, Lithic::Models::ManagementOperationListParams::Category::TaggedSymbol)
        MANAGEMENT_ADJUSTMENT =
          T.let(:MANAGEMENT_ADJUSTMENT, Lithic::Models::ManagementOperationListParams::Category::TaggedSymbol)
        MANAGEMENT_DISBURSEMENT =
          T.let(:MANAGEMENT_DISBURSEMENT, Lithic::Models::ManagementOperationListParams::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ManagementOperationListParams::Category::TaggedSymbol]) }
        def self.values; end
      end

      # Management operation status to be returned.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:PENDING, Lithic::Models::ManagementOperationListParams::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ManagementOperationListParams::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationListParams::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ManagementOperationListParams::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ManagementOperationListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ManagementOperationListParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
