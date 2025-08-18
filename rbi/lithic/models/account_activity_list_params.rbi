# typed: strong

module Lithic
  module Models
    class AccountActivityListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::AccountActivityListParams, Lithic::Internal::AnyHash)
        end

      # Filter by account token
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Date string in RFC 3339 format. Only entries created after the specified time
      # will be included. UTC time zone.
      sig { returns(T.nilable(Time)) }
      attr_reader :begin_

      sig { params(begin_: Time).void }
      attr_writer :begin_

      # Filter by business account token
      sig { returns(T.nilable(String)) }
      attr_reader :business_account_token

      sig { params(business_account_token: String).void }
      attr_writer :business_account_token

      # Filter by transaction category
      sig do
        returns(
          T.nilable(Lithic::AccountActivityListParams::Category::OrSymbol)
        )
      end
      attr_reader :category

      sig do
        params(
          category: Lithic::AccountActivityListParams::Category::OrSymbol
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

      # Filter by financial account token
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      # Page size (for pagination).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by transaction result
      sig do
        returns(
          T.nilable(
            T::Array[Lithic::AccountActivityListParams::Result::OrSymbol]
          )
        )
      end
      attr_reader :result

      sig do
        params(
          result: T::Array[Lithic::AccountActivityListParams::Result::OrSymbol]
        ).void
      end
      attr_writer :result

      # A cursor representing an item's token after which a page of results should
      # begin. Used to retrieve the next page of results after this item.
      sig { returns(T.nilable(String)) }
      attr_reader :starting_after

      sig { params(starting_after: String).void }
      attr_writer :starting_after

      # Filter by transaction status
      sig do
        returns(
          T.nilable(
            T::Array[Lithic::AccountActivityListParams::Status::OrSymbol]
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[Lithic::AccountActivityListParams::Status::OrSymbol]
        ).void
      end
      attr_writer :status

      sig do
        params(
          account_token: String,
          begin_: Time,
          business_account_token: String,
          category: Lithic::AccountActivityListParams::Category::OrSymbol,
          end_: Time,
          ending_before: String,
          financial_account_token: String,
          page_size: Integer,
          result: T::Array[Lithic::AccountActivityListParams::Result::OrSymbol],
          starting_after: String,
          status: T::Array[Lithic::AccountActivityListParams::Status::OrSymbol],
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by account token
        account_token: nil,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Filter by business account token
        business_account_token: nil,
        # Filter by transaction category
        category: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Filter by financial account token
        financial_account_token: nil,
        # Page size (for pagination).
        page_size: nil,
        # Filter by transaction result
        result: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Filter by transaction status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            begin_: Time,
            business_account_token: String,
            category: Lithic::AccountActivityListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            financial_account_token: String,
            page_size: Integer,
            result:
              T::Array[Lithic::AccountActivityListParams::Result::OrSymbol],
            starting_after: String,
            status:
              T::Array[Lithic::AccountActivityListParams::Status::OrSymbol],
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by transaction category
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AccountActivityListParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(:ACH, Lithic::AccountActivityListParams::Category::TaggedSymbol)
        BALANCE_OR_FUNDING =
          T.let(
            :BALANCE_OR_FUNDING,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        CARD =
          T.let(
            :CARD,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        EXTERNAL_ACH =
          T.let(
            :EXTERNAL_ACH,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        EXTERNAL_CHECK =
          T.let(
            :EXTERNAL_CHECK,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        EXTERNAL_TRANSFER =
          T.let(
            :EXTERNAL_TRANSFER,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        EXTERNAL_WIRE =
          T.let(
            :EXTERNAL_WIRE,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        MANAGEMENT_ADJUSTMENT =
          T.let(
            :MANAGEMENT_ADJUSTMENT,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        MANAGEMENT_DISPUTE =
          T.let(
            :MANAGEMENT_DISPUTE,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        MANAGEMENT_FEE =
          T.let(
            :MANAGEMENT_FEE,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        MANAGEMENT_REWARD =
          T.let(
            :MANAGEMENT_REWARD,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        MANAGEMENT_DISBURSEMENT =
          T.let(
            :MANAGEMENT_DISBURSEMENT,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )
        PROGRAM_FUNDING =
          T.let(
            :PROGRAM_FUNDING,
            Lithic::AccountActivityListParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::AccountActivityListParams::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AccountActivityListParams::Result)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            Lithic::AccountActivityListParams::Result::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::AccountActivityListParams::Result::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::AccountActivityListParams::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AccountActivityListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED =
          T.let(
            :DECLINED,
            Lithic::AccountActivityListParams::Status::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :EXPIRED,
            Lithic::AccountActivityListParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :PENDING,
            Lithic::AccountActivityListParams::Status::TaggedSymbol
          )
        SETTLED =
          T.let(
            :SETTLED,
            Lithic::AccountActivityListParams::Status::TaggedSymbol
          )
        VOIDED =
          T.let(
            :VOIDED,
            Lithic::AccountActivityListParams::Status::TaggedSymbol
          )
        RETURNED =
          T.let(
            :RETURNED,
            Lithic::AccountActivityListParams::Status::TaggedSymbol
          )
        REVERSED =
          T.let(
            :REVERSED,
            Lithic::AccountActivityListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::AccountActivityListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
