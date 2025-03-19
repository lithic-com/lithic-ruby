# typed: strong

module Lithic
  module Models
    module Cards
      class FinancialTransactionListParams < Lithic::BaseModel
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

        # Financial Transaction category to be returned.
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

        # Financial Transaction result to be returned.
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

        # Financial Transaction status to be returned.
        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig do
          params(
            begin_: Time,
            category: Symbol,
            end_: Time,
            ending_before: String,
            result: Symbol,
            starting_after: String,
            status: Symbol,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          begin_: nil,
          category: nil,
          end_: nil,
          ending_before: nil,
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
                category: Symbol,
                end_: Time,
                ending_before: String,
                result: Symbol,
                starting_after: String,
                status: Symbol,
                request_options: Lithic::RequestOptions
              }
            )
        end
        def to_hash
        end

        # Financial Transaction category to be returned.
        class Category < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CARD = :CARD
          TRANSFER = :TRANSFER
        end

        # Financial Transaction result to be returned.
        class Result < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
          DECLINED = :DECLINED
        end

        # Financial Transaction status to be returned.
        class Status < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          DECLINED = :DECLINED
          EXPIRED = :EXPIRED
          PENDING = :PENDING
          RETURNED = :RETURNED
          SETTLED = :SETTLED
          VOIDED = :VOIDED
        end
      end
    end
  end
end
