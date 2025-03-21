# typed: strong

module Lithic
  module Models
    class AccountUpdateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a
      #   $1,000 limit). By default the daily spend limit is set to $1,250.
      sig { returns(T.nilable(Integer)) }
      def daily_spend_limit
      end

      sig { params(_: Integer).returns(Integer) }
      def daily_spend_limit=(_)
      end

      # Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      #   $1,000 limit). Once this limit is reached, no transactions will be accepted on
      #   any card created for this account until the limit is updated. Note that a spend
      #   limit of 0 is effectively no limit, and should only be used to reset or remove a
      #   prior limit. Only a limit of 1 or above will result in declined transactions due
      #   to checks against the account limit. This behavior differs from the daily spend
      #   limit and the monthly spend limit.
      sig { returns(T.nilable(Integer)) }
      def lifetime_spend_limit
      end

      sig { params(_: Integer).returns(Integer) }
      def lifetime_spend_limit=(_)
      end

      # Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      #   $1,000 limit). By default the monthly spend limit is set to $5,000.
      sig { returns(T.nilable(Integer)) }
      def monthly_spend_limit
      end

      sig { params(_: Integer).returns(Integer) }
      def monthly_spend_limit=(_)
      end

      # Account states.
      sig { returns(T.nilable(Lithic::Models::AccountUpdateParams::State::OrSymbol)) }
      def state
      end

      sig do
        params(_: Lithic::Models::AccountUpdateParams::State::OrSymbol)
          .returns(Lithic::Models::AccountUpdateParams::State::OrSymbol)
      end
      def state=(_)
      end

      # Address used during Address Verification Service (AVS) checks during
      #   transactions if enabled via Auth Rules. This field is deprecated as AVS checks
      #   are no longer supported by Authorization Rules. The field will be removed from
      #   the schema in a future release.
      sig { returns(T.nilable(Lithic::Models::AccountUpdateParams::VerificationAddress)) }
      def verification_address
      end

      sig do
        params(_: T.any(Lithic::Models::AccountUpdateParams::VerificationAddress, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::AccountUpdateParams::VerificationAddress, Lithic::Util::AnyHash))
      end
      def verification_address=(_)
      end

      sig do
        params(
          daily_spend_limit: Integer,
          lifetime_spend_limit: Integer,
          monthly_spend_limit: Integer,
          state: Lithic::Models::AccountUpdateParams::State::OrSymbol,
          verification_address: T.any(Lithic::Models::AccountUpdateParams::VerificationAddress, Lithic::Util::AnyHash),
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        daily_spend_limit: nil,
        lifetime_spend_limit: nil,
        monthly_spend_limit: nil,
        state: nil,
        verification_address: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              daily_spend_limit: Integer,
              lifetime_spend_limit: Integer,
              monthly_spend_limit: Integer,
              state: Lithic::Models::AccountUpdateParams::State::OrSymbol,
              verification_address: Lithic::Models::AccountUpdateParams::VerificationAddress,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Account states.
      module State
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AccountUpdateParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::AccountUpdateParams::State::TaggedSymbol) }

        ACTIVE = T.let(:ACTIVE, Lithic::Models::AccountUpdateParams::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::AccountUpdateParams::State::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::AccountUpdateParams::State::TaggedSymbol]) }
          def values
          end
        end
      end

      class VerificationAddress < Lithic::BaseModel
        sig { returns(T.nilable(String)) }
        def address1
        end

        sig { params(_: String).returns(String) }
        def address1=(_)
        end

        sig { returns(T.nilable(String)) }
        def address2
        end

        sig { params(_: String).returns(String) }
        def address2=(_)
        end

        sig { returns(T.nilable(String)) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: String).returns(String) }
        def country=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        # Address used during Address Verification Service (AVS) checks during
        #   transactions if enabled via Auth Rules. This field is deprecated as AVS checks
        #   are no longer supported by Authorization Rules. The field will be removed from
        #   the schema in a future release.
        sig do
          params(
            address1: String,
            address2: String,
            city: String,
            country: String,
            postal_code: String,
            state: String
          )
            .returns(T.attached_class)
        end
        def self.new(address1: nil, address2: nil, city: nil, country: nil, postal_code: nil, state: nil)
        end

        sig do
          override
            .returns(
              {
                address1: String,
                address2: String,
                city: String,
                country: String,
                postal_code: String,
                state: String
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
