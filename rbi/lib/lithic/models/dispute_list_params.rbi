# typed: strong

module Lithic
  module Models
    class DisputeListParams < Lithic::BaseModel
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

      # List disputes of a specific status.
      sig { returns(T.nilable(Lithic::Models::DisputeListParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Lithic::Models::DisputeListParams::Status::OrSymbol)
          .returns(Lithic::Models::DisputeListParams::Status::OrSymbol)
      end
      def status=(_)
      end

      # Transaction tokens to filter by.
      sig { returns(T.nilable(T::Array[String])) }
      def transaction_tokens
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def transaction_tokens=(_)
      end

      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::Models::DisputeListParams::Status::OrSymbol,
          transaction_tokens: T::Array[String],
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        begin_: nil,
        end_: nil,
        ending_before: nil,
        page_size: nil,
        starting_after: nil,
        status: nil,
        transaction_tokens: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              begin_: Time,
              end_: Time,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              status: Lithic::Models::DisputeListParams::Status::OrSymbol,
              transaction_tokens: T::Array[String],
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # List disputes of a specific status.
      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::DisputeListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::DisputeListParams::Status::TaggedSymbol) }

        ARBITRATION = T.let(:ARBITRATION, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        CASE_CLOSED = T.let(:CASE_CLOSED, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        CASE_WON = T.let(:CASE_WON, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        NEW = T.let(:NEW, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        PENDING_CUSTOMER = T.let(:PENDING_CUSTOMER, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        PREARBITRATION = T.let(:PREARBITRATION, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        REPRESENTMENT = T.let(:REPRESENTMENT, Lithic::Models::DisputeListParams::Status::TaggedSymbol)
        SUBMITTED = T.let(:SUBMITTED, Lithic::Models::DisputeListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::DisputeListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
