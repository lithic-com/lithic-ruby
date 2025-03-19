# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionRecoverParams < Lithic::BaseModel
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

        sig do
          params(
            begin_: Time,
            end_: Time,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(begin_: nil, end_: nil, request_options: {})
        end

        sig { override.returns({begin_: Time, end_: Time, request_options: Lithic::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
