# typed: strong

module Lithic
  module Models
    class TokenMetadata < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::TokenMetadata, Lithic::Internal::AnyHash) }

      # Contains the information of the account responsible for the payment.
      sig { returns(Lithic::TokenMetadata::PaymentAccountInfo) }
      attr_reader :payment_account_info

      sig do
        params(
          payment_account_info:
            Lithic::TokenMetadata::PaymentAccountInfo::OrHash
        ).void
      end
      attr_writer :payment_account_info

      # The current status of the digital wallet token. Pending or declined.
      sig { returns(String) }
      attr_accessor :status

      # The identifier of the Payment App instance within a device that will be
      # provisioned with a token
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_app_instance_id

      # The party that requested the digitization
      sig { returns(T.nilable(String)) }
      attr_reader :token_requestor_id

      sig { params(token_requestor_id: String).void }
      attr_writer :token_requestor_id

      # Human-readable name of the wallet that the token_requestor_id maps to.
      sig do
        returns(
          T.nilable(Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol)
        )
      end
      attr_reader :token_requestor_name

      sig do
        params(
          token_requestor_name:
            Lithic::TokenMetadata::TokenRequestorName::OrSymbol
        ).void
      end
      attr_writer :token_requestor_name

      # Contains the metadata for the digital wallet being tokenized.
      sig do
        params(
          payment_account_info:
            Lithic::TokenMetadata::PaymentAccountInfo::OrHash,
          status: String,
          payment_app_instance_id: T.nilable(String),
          token_requestor_id: String,
          token_requestor_name:
            Lithic::TokenMetadata::TokenRequestorName::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Contains the information of the account responsible for the payment.
        payment_account_info:,
        # The current status of the digital wallet token. Pending or declined.
        status:,
        # The identifier of the Payment App instance within a device that will be
        # provisioned with a token
        payment_app_instance_id: nil,
        # The party that requested the digitization
        token_requestor_id: nil,
        # Human-readable name of the wallet that the token_requestor_id maps to.
        token_requestor_name: nil
      )
      end

      sig do
        override.returns(
          {
            payment_account_info: Lithic::TokenMetadata::PaymentAccountInfo,
            status: String,
            payment_app_instance_id: T.nilable(String),
            token_requestor_id: String,
            token_requestor_name:
              Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class PaymentAccountInfo < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TokenMetadata::PaymentAccountInfo,
              Lithic::Internal::AnyHash
            )
          end

        # Additional information that can be used to identify the account holder, such as
        # name, address, etc
        sig do
          returns(Lithic::TokenMetadata::PaymentAccountInfo::AccountHolderData)
        end
        attr_reader :account_holder_data

        sig do
          params(
            account_holder_data:
              Lithic::TokenMetadata::PaymentAccountInfo::AccountHolderData::OrHash
          ).void
        end
        attr_writer :account_holder_data

        # Reference to the PAN that is unique per Wallet Provider
        sig { returns(T.nilable(String)) }
        attr_accessor :pan_unique_reference

        # The unique account reference assigned to the PAN
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_account_reference

        # A unique reference assigned following the allocation of a token used to identify
        # the token for the duration of its lifetime.
        sig { returns(T.nilable(String)) }
        attr_accessor :token_unique_reference

        # Contains the information of the account responsible for the payment.
        sig do
          params(
            account_holder_data:
              Lithic::TokenMetadata::PaymentAccountInfo::AccountHolderData::OrHash,
            pan_unique_reference: T.nilable(String),
            payment_account_reference: T.nilable(String),
            token_unique_reference: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Additional information that can be used to identify the account holder, such as
          # name, address, etc
          account_holder_data:,
          # Reference to the PAN that is unique per Wallet Provider
          pan_unique_reference: nil,
          # The unique account reference assigned to the PAN
          payment_account_reference: nil,
          # A unique reference assigned following the allocation of a token used to identify
          # the token for the duration of its lifetime.
          token_unique_reference: nil
        )
        end

        sig do
          override.returns(
            {
              account_holder_data:
                Lithic::TokenMetadata::PaymentAccountInfo::AccountHolderData,
              pan_unique_reference: T.nilable(String),
              payment_account_reference: T.nilable(String),
              token_unique_reference: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class AccountHolderData < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TokenMetadata::PaymentAccountInfo::AccountHolderData,
                Lithic::Internal::AnyHash
              )
            end

          # The phone number, may contain country code along with phone number when
          # countryDialInCode is not present
          sig { returns(T.nilable(String)) }
          attr_accessor :phone_number

          # Additional information that can be used to identify the account holder, such as
          # name, address, etc
          sig do
            params(phone_number: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(
            # The phone number, may contain country code along with phone number when
            # countryDialInCode is not present
            phone_number: nil
          )
          end

          sig { override.returns({ phone_number: T.nilable(String) }) }
          def to_hash
          end
        end
      end

      # Human-readable name of the wallet that the token_requestor_id maps to.
      module TokenRequestorName
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TokenMetadata::TokenRequestorName)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMAZON_ONE =
          T.let(
            :AMAZON_ONE,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        ANDROID_PAY =
          T.let(
            :ANDROID_PAY,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        APPLE_PAY =
          T.let(
            :APPLE_PAY,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        FACEBOOK =
          T.let(
            :FACEBOOK,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        FITBIT_PAY =
          T.let(
            :FITBIT_PAY,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        GARMIN_PAY =
          T.let(
            :GARMIN_PAY,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        GOOGLE_PAY =
          T.let(
            :GOOGLE_PAY,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        MICROSOFT_PAY =
          T.let(
            :MICROSOFT_PAY,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        NETFLIX =
          T.let(
            :NETFLIX,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        SAMSUNG_PAY =
          T.let(
            :SAMSUNG_PAY,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )
        VISA_CHECKOUT =
          T.let(
            :VISA_CHECKOUT,
            Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::TokenMetadata::TokenRequestorName::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
