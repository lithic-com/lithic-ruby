# frozen_string_literal: true

module Lithic
  module Models
    class DigitalWalletTokenMetadata < Lithic::Internal::Type::BaseModel
      # @!attribute payment_account_info
      #   Contains the information of the account responsible for the payment.
      #
      #   @return [Lithic::Models::DigitalWalletTokenMetadata::PaymentAccountInfo]
      required :payment_account_info, -> { Lithic::DigitalWalletTokenMetadata::PaymentAccountInfo }

      # @!attribute status
      #   The current status of the digital wallet token. Pending or declined.
      #
      #   @return [String]
      required :status, String

      # @!attribute payment_app_instance_id
      #   The identifier of the Payment App instance within a device that will be
      #   provisioned with a token
      #
      #   @return [String, nil]
      optional :payment_app_instance_id, String, nil?: true

      # @!attribute token_requestor_id
      #   The party that requested the digitization
      #
      #   @return [String, nil]
      optional :token_requestor_id, String

      # @!attribute token_requestor_name
      #   Human-readable name of the wallet that the token_requestor_id maps to.
      #
      #   @return [Symbol, Lithic::Models::DigitalWalletTokenMetadata::TokenRequestorName, nil]
      optional :token_requestor_name, enum: -> { Lithic::DigitalWalletTokenMetadata::TokenRequestorName }

      # @!method initialize(payment_account_info:, status:, payment_app_instance_id: nil, token_requestor_id: nil, token_requestor_name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::DigitalWalletTokenMetadata} for more details.
      #
      #   Contains the metadata for the digital wallet being tokenized.
      #
      #   @param payment_account_info [Lithic::Models::DigitalWalletTokenMetadata::PaymentAccountInfo] Contains the information of the account responsible for the payment.
      #
      #   @param status [String] The current status of the digital wallet token. Pending or declined.
      #
      #   @param payment_app_instance_id [String, nil] The identifier of the Payment App instance within a device that will be provisio
      #
      #   @param token_requestor_id [String] The party that requested the digitization
      #
      #   @param token_requestor_name [Symbol, Lithic::Models::DigitalWalletTokenMetadata::TokenRequestorName] Human-readable name of the wallet that the token_requestor_id maps to.

      # @see Lithic::Models::DigitalWalletTokenMetadata#payment_account_info
      class PaymentAccountInfo < Lithic::Internal::Type::BaseModel
        # @!attribute account_holder_data
        #   Additional information that can be used to identify the account holder, such as
        #   name, address, etc
        #
        #   @return [Lithic::Models::DigitalWalletTokenMetadata::PaymentAccountInfo::AccountHolderData]
        required :account_holder_data,
                 -> { Lithic::DigitalWalletTokenMetadata::PaymentAccountInfo::AccountHolderData }

        # @!attribute pan_unique_reference
        #   Reference to the PAN that is unique per Wallet Provider
        #
        #   @return [String, nil]
        optional :pan_unique_reference, String, nil?: true

        # @!attribute payment_account_reference
        #   The unique account reference assigned to the PAN
        #
        #   @return [String, nil]
        optional :payment_account_reference, String, nil?: true

        # @!attribute token_unique_reference
        #   A unique reference assigned following the allocation of a token used to identify
        #   the token for the duration of its lifetime.
        #
        #   @return [String, nil]
        optional :token_unique_reference, String, nil?: true

        # @!method initialize(account_holder_data:, pan_unique_reference: nil, payment_account_reference: nil, token_unique_reference: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::DigitalWalletTokenMetadata::PaymentAccountInfo} for more
        #   details.
        #
        #   Contains the information of the account responsible for the payment.
        #
        #   @param account_holder_data [Lithic::Models::DigitalWalletTokenMetadata::PaymentAccountInfo::AccountHolderData] Additional information that can be used to identify the account holder, such as
        #
        #   @param pan_unique_reference [String, nil] Reference to the PAN that is unique per Wallet Provider
        #
        #   @param payment_account_reference [String, nil] The unique account reference assigned to the PAN
        #
        #   @param token_unique_reference [String, nil] A unique reference assigned following the allocation of a token used to identify

        # @see Lithic::Models::DigitalWalletTokenMetadata::PaymentAccountInfo#account_holder_data
        class AccountHolderData < Lithic::Internal::Type::BaseModel
          # @!attribute phone_number
          #   The phone number, may contain country code along with phone number when
          #   countryDialInCode is not present
          #
          #   @return [String, nil]
          optional :phone_number, String, nil?: true

          # @!method initialize(phone_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::DigitalWalletTokenMetadata::PaymentAccountInfo::AccountHolderData}
          #   for more details.
          #
          #   Additional information that can be used to identify the account holder, such as
          #   name, address, etc
          #
          #   @param phone_number [String, nil] The phone number, may contain country code along with phone number when countryD
        end
      end

      # Human-readable name of the wallet that the token_requestor_id maps to.
      #
      # @see Lithic::Models::DigitalWalletTokenMetadata#token_requestor_name
      module TokenRequestorName
        extend Lithic::Internal::Type::Enum

        AMAZON_ONE = :AMAZON_ONE
        ANDROID_PAY = :ANDROID_PAY
        APPLE_PAY = :APPLE_PAY
        FACEBOOK = :FACEBOOK
        FITBIT_PAY = :FITBIT_PAY
        GARMIN_PAY = :GARMIN_PAY
        MICROSOFT_PAY = :MICROSOFT_PAY
        NETFLIX = :NETFLIX
        SAMSUNG_PAY = :SAMSUNG_PAY
        UNKNOWN = :UNKNOWN
        VISA_CHECKOUT = :VISA_CHECKOUT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
