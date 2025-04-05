# typed: strong

module Lithic
  module Models
    class ExternalPaymentListParams < Lithic::Internal::Type::BaseModel
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

      # External Payment category to be returned.
      sig { returns(T.nilable(Lithic::Models::ExternalPaymentListParams::Category::OrSymbol)) }
      attr_reader :category

      sig { params(category: Lithic::Models::ExternalPaymentListParams::Category::OrSymbol).void }
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

      # Globally unique identifier for the financial account or card that will send the
      # funds. Accepted type dependent on the program's use case.
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # External Payment result to be returned.
      sig { returns(T.nilable(Lithic::Models::ExternalPaymentListParams::Result::OrSymbol)) }
      attr_reader :result

      sig { params(result: Lithic::Models::ExternalPaymentListParams::Result::OrSymbol).void }
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Book transfer status to be returned.
      sig { returns(T.nilable(Lithic::Models::ExternalPaymentListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Lithic::Models::ExternalPaymentListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          begin_: Time,
          business_account_token: String,
          category: Lithic::Models::ExternalPaymentListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::Models::ExternalPaymentListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::Models::ExternalPaymentListParams::Status::OrSymbol,
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
        result: nil,
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
              category: Lithic::Models::ExternalPaymentListParams::Category::OrSymbol,
              end_: Time,
              ending_before: String,
              financial_account_token: String,
              page_size: Integer,
              result: Lithic::Models::ExternalPaymentListParams::Result::OrSymbol,
              starting_after: String,
              status: Lithic::Models::ExternalPaymentListParams::Status::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # External Payment category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentListParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol) }

        EXTERNAL_WIRE = T.let(:EXTERNAL_WIRE, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)
        EXTERNAL_ACH = T.let(:EXTERNAL_ACH, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)
        EXTERNAL_CHECK =
          T.let(:EXTERNAL_CHECK, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)
        EXTERNAL_TRANSFER =
          T.let(:EXTERNAL_TRANSFER, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol]) }
        def self.values; end
      end

      # External Payment result to be returned.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentListParams::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol]) }
        def self.values; end
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
