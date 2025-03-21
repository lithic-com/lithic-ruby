# typed: strong

module Lithic
  module Models
    class ExternalPaymentListParams < Lithic::BaseModel
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

      # External Payment category to be returned.
      sig { returns(T.nilable(Lithic::Models::ExternalPaymentListParams::Category::OrSymbol)) }
      def category
      end

      sig do
        params(_: Lithic::Models::ExternalPaymentListParams::Category::OrSymbol)
          .returns(Lithic::Models::ExternalPaymentListParams::Category::OrSymbol)
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

      # External Payment result to be returned.
      sig { returns(T.nilable(Lithic::Models::ExternalPaymentListParams::Result::OrSymbol)) }
      def result
      end

      sig do
        params(_: Lithic::Models::ExternalPaymentListParams::Result::OrSymbol)
          .returns(Lithic::Models::ExternalPaymentListParams::Result::OrSymbol)
      end
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
      sig { returns(T.nilable(Lithic::Models::ExternalPaymentListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Lithic::Models::ExternalPaymentListParams::Status::OrSymbol)
          .returns(Lithic::Models::ExternalPaymentListParams::Status::OrSymbol)
      end
      def status=(_)
      end

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
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      # External Payment category to be returned.
      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentListParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol) }

        EXTERNAL_WIRE = T.let(:EXTERNAL_WIRE, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)
        EXTERNAL_ACH = T.let(:EXTERNAL_ACH, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)
        EXTERNAL_CHECK =
          T.let(:EXTERNAL_CHECK, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)
        EXTERNAL_TRANSFER =
          T.let(:EXTERNAL_TRANSFER, Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPaymentListParams::Category::TaggedSymbol]) }
          def values
          end
        end
      end

      # External Payment result to be returned.
      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentListParams::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPaymentListParams::Result::TaggedSymbol]) }
          def values
          end
        end
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentListParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPaymentListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
