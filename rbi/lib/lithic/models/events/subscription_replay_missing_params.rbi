# typed: strong

module Lithic
  module Models
    module Events
      class SubscriptionReplayMissingParams < Lithic::BaseModel
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

        sig do
          params(
            begin_: Time,
            end_: Time,
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)
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
