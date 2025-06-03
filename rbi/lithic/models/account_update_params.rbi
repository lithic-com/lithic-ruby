# typed: strong

module Lithic
  module Models
    class AccountUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::AccountUpdateParams, Lithic::Internal::AnyHash)
        end

      # Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a
      # $1,000 limit). By default the daily spend limit is set to $1,250.
      sig { returns(T.nilable(Integer)) }
      attr_reader :daily_spend_limit

      sig { params(daily_spend_limit: Integer).void }
      attr_writer :daily_spend_limit

      # Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      # $1,000 limit). Once this limit is reached, no transactions will be accepted on
      # any card created for this account until the limit is updated. Note that a spend
      # limit of 0 is effectively no limit, and should only be used to reset or remove a
      # prior limit. Only a limit of 1 or above will result in declined transactions due
      # to checks against the account limit. This behavior differs from the daily spend
      # limit and the monthly spend limit.
      sig { returns(T.nilable(Integer)) }
      attr_reader :lifetime_spend_limit

      sig { params(lifetime_spend_limit: Integer).void }
      attr_writer :lifetime_spend_limit

      # Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      # $1,000 limit). By default the monthly spend limit is set to $5,000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :monthly_spend_limit

      sig { params(monthly_spend_limit: Integer).void }
      attr_writer :monthly_spend_limit

      # Account states.
      sig { returns(T.nilable(Lithic::AccountUpdateParams::State::OrSymbol)) }
      attr_reader :state

      sig { params(state: Lithic::AccountUpdateParams::State::OrSymbol).void }
      attr_writer :state

      # Address used during Address Verification Service (AVS) checks during
      # transactions if enabled via Auth Rules. This field is deprecated as AVS checks
      # are no longer supported by Auth Rules. The field will be removed from the schema
      # in a future release.
      sig do
        returns(T.nilable(Lithic::AccountUpdateParams::VerificationAddress))
      end
      attr_reader :verification_address

      sig do
        params(
          verification_address:
            Lithic::AccountUpdateParams::VerificationAddress::OrHash
        ).void
      end
      attr_writer :verification_address

      sig do
        params(
          daily_spend_limit: Integer,
          lifetime_spend_limit: Integer,
          monthly_spend_limit: Integer,
          state: Lithic::AccountUpdateParams::State::OrSymbol,
          verification_address:
            Lithic::AccountUpdateParams::VerificationAddress::OrHash,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a
        # $1,000 limit). By default the daily spend limit is set to $1,250.
        daily_spend_limit: nil,
        # Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
        # $1,000 limit). Once this limit is reached, no transactions will be accepted on
        # any card created for this account until the limit is updated. Note that a spend
        # limit of 0 is effectively no limit, and should only be used to reset or remove a
        # prior limit. Only a limit of 1 or above will result in declined transactions due
        # to checks against the account limit. This behavior differs from the daily spend
        # limit and the monthly spend limit.
        lifetime_spend_limit: nil,
        # Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
        # $1,000 limit). By default the monthly spend limit is set to $5,000.
        monthly_spend_limit: nil,
        # Account states.
        state: nil,
        # Address used during Address Verification Service (AVS) checks during
        # transactions if enabled via Auth Rules. This field is deprecated as AVS checks
        # are no longer supported by Auth Rules. The field will be removed from the schema
        # in a future release.
        verification_address: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            daily_spend_limit: Integer,
            lifetime_spend_limit: Integer,
            monthly_spend_limit: Integer,
            state: Lithic::AccountUpdateParams::State::OrSymbol,
            verification_address:
              Lithic::AccountUpdateParams::VerificationAddress,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Account states.
      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::AccountUpdateParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:ACTIVE, Lithic::AccountUpdateParams::State::TaggedSymbol)
        PAUSED =
          T.let(:PAUSED, Lithic::AccountUpdateParams::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::AccountUpdateParams::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class VerificationAddress < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountUpdateParams::VerificationAddress,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :address1

        sig { params(address1: String).void }
        attr_writer :address1

        sig { returns(T.nilable(String)) }
        attr_reader :address2

        sig { params(address2: String).void }
        attr_writer :address2

        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { params(postal_code: String).void }
        attr_writer :postal_code

        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # Address used during Address Verification Service (AVS) checks during
        # transactions if enabled via Auth Rules. This field is deprecated as AVS checks
        # are no longer supported by Auth Rules. The field will be removed from the schema
        # in a future release.
        sig do
          params(
            address1: String,
            address2: String,
            city: String,
            country: String,
            postal_code: String,
            state: String
          ).returns(T.attached_class)
        end
        def self.new(
          address1: nil,
          address2: nil,
          city: nil,
          country: nil,
          postal_code: nil,
          state: nil
        )
        end

        sig do
          override.returns(
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
