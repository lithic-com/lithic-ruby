# typed: strong

module Lithic
  module Models
    class ExternalPaymentListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::ExternalPaymentListParams, Lithic::Internal::AnyHash)
        end

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
      sig do
        returns(
          T.nilable(Lithic::ExternalPaymentListParams::Category::OrSymbol)
        )
      end
      attr_reader :category

      sig do
        params(
          category: Lithic::ExternalPaymentListParams::Category::OrSymbol
        ).void
      end
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
      sig do
        returns(T.nilable(Lithic::ExternalPaymentListParams::Result::OrSymbol))
      end
      attr_reader :result

      sig do
        params(result: Lithic::ExternalPaymentListParams::Result::OrSymbol).void
      end
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Book transfer status to be returned.
      sig do
        returns(T.nilable(Lithic::ExternalPaymentListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Lithic::ExternalPaymentListParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          begin_: Time,
          business_account_token: String,
          category: Lithic::ExternalPaymentListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: Lithic::ExternalPaymentListParams::Result::OrSymbol,
          starting_after: String,
          status: Lithic::ExternalPaymentListParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        business_account_token: nil,
        # External Payment category to be returned.
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Globally unique identifier for the financial account or card that will send the
        # funds. Accepted type dependent on the program's use case.
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        # External Payment result to be returned.
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Book transfer status to be returned.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            begin_: Time,
            business_account_token: String,
            category: Lithic::ExternalPaymentListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            financial_account_token: String,
            page_size: Integer,
            result: Lithic::ExternalPaymentListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::ExternalPaymentListParams::Status::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # External Payment category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalPaymentListParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_WIRE =
          T.let(
            :EXTERNAL_WIRE,
            Lithic::ExternalPaymentListParams::Category::TaggedSymbol
          )
        EXTERNAL_ACH =
          T.let(
            :EXTERNAL_ACH,
            Lithic::ExternalPaymentListParams::Category::TaggedSymbol
          )
        EXTERNAL_CHECK =
          T.let(
            :EXTERNAL_CHECK,
            Lithic::ExternalPaymentListParams::Category::TaggedSymbol
          )
        EXTERNAL_FEDNOW =
          T.let(
            :EXTERNAL_FEDNOW,
            Lithic::ExternalPaymentListParams::Category::TaggedSymbol
          )
        EXTERNAL_RTP =
          T.let(
            :EXTERNAL_RTP,
            Lithic::ExternalPaymentListParams::Category::TaggedSymbol
          )
        EXTERNAL_TRANSFER =
          T.let(
            :EXTERNAL_TRANSFER,
            Lithic::ExternalPaymentListParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ExternalPaymentListParams::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # External Payment result to be returned.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalPaymentListParams::Result)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            Lithic::ExternalPaymentListParams::Result::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::ExternalPaymentListParams::Result::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ExternalPaymentListParams::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalPaymentListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            Lithic::ExternalPaymentListParams::Status::TaggedSymbol
          )
        SETTLED =
          T.let(
            :SETTLED,
            Lithic::ExternalPaymentListParams::Status::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::ExternalPaymentListParams::Status::TaggedSymbol
          )
        REVERSED =
          T.let(
            :REVERSED,
            Lithic::ExternalPaymentListParams::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :CANCELED,
            Lithic::ExternalPaymentListParams::Status::TaggedSymbol
          )
        RETURNED =
          T.let(
            :RETURNED,
            Lithic::ExternalPaymentListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::ExternalPaymentListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
