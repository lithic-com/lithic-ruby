# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionListAttemptsParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :begin_

        sig { params(begin_: Time).void }
        attr_writer :begin_

        # Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        sig { returns(T.nilable(Time)) }
        attr_reader :end_

        sig { params(end_: Time).void }
        attr_writer :end_

        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Page size (for pagination).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        sig { returns(T.nilable(Lithic::Models::Events::SubscriptionListAttemptsParams::Status::OrSymbol)) }
        attr_reader :status

        sig { params(status: Lithic::Models::Events::SubscriptionListAttemptsParams::Status::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            begin_: Time,
            end_: Time,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            status: Lithic::Models::Events::SubscriptionListAttemptsParams::Status::OrSymbol,
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
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
                status: Lithic::Models::Events::SubscriptionListAttemptsParams::Status::OrSymbol,
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end

        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::Events::SubscriptionListAttemptsParams::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::Events::SubscriptionListAttemptsParams::Status::TaggedSymbol) }

          FAILED = T.let(:FAILED, Lithic::Models::Events::SubscriptionListAttemptsParams::Status::TaggedSymbol)
          PENDING = T.let(:PENDING, Lithic::Models::Events::SubscriptionListAttemptsParams::Status::TaggedSymbol)
          SENDING = T.let(:SENDING, Lithic::Models::Events::SubscriptionListAttemptsParams::Status::TaggedSymbol)
          SUCCESS = T.let(:SUCCESS, Lithic::Models::Events::SubscriptionListAttemptsParams::Status::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::Events::SubscriptionListAttemptsParams::Status::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
