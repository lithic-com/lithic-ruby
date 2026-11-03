# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#create_payment_credentials
    class TokenizationCreatePaymentCredentialsParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute tokenization_token
      #
      #   @return [String]
      required :tokenization_token, String

      # @!attribute device
      #   Device used for the purchase
      #
      #   @return [Lithic::Models::TokenizationCreatePaymentCredentialsParams::Device]
      required :device, -> { Lithic::TokenizationCreatePaymentCredentialsParams::Device }

      # @!attribute mandate
      #
      #   @return [Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate]
      required :mandate, -> { Lithic::TokenizationCreatePaymentCredentialsParams::Mandate }

      # @!attribute type
      #   Type of purchase for which payment credentials are requested
      #
      #   @return [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsParams::Type]
      required :type, enum: -> { Lithic::TokenizationCreatePaymentCredentialsParams::Type }

      # @!method initialize(tokenization_token:, device:, mandate:, type:, request_options: {})
      #   @param tokenization_token [String]
      #
      #   @param device [Lithic::Models::TokenizationCreatePaymentCredentialsParams::Device] Device used for the purchase
      #
      #   @param mandate [Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate]
      #
      #   @param type [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsParams::Type] Type of purchase for which payment credentials are requested
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      class Device < Lithic::Internal::Type::BaseModel
        # @!attribute application_name
        #   Name of the application used for the purchase
        #
        #   @return [String]
        required :application_name, String

        # @!attribute brand
        #   Device brand
        #
        #   @return [String]
        required :brand, String

        # @!attribute ip_address
        #   IP address of the device
        #
        #   @return [String]
        required :ip_address, String

        # @!attribute type
        #   Device type
        #
        #   @return [String]
        required :type, String

        # @!method initialize(application_name:, brand:, ip_address:, type:)
        #   Device used for the purchase
        #
        #   @param application_name [String] Name of the application used for the purchase
        #
        #   @param brand [String] Device brand
        #
        #   @param ip_address [String] IP address of the device
        #
        #   @param type [String] Device type
      end

      class Mandate < Lithic::Internal::Type::BaseModel
        # @!attribute amount
        #   Purchase amount and mandate limit in USD cents
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute expires_at
        #   Date and time when the mandate expires, independent of the payment credentials'
        #   expiration
        #
        #   @return [Time]
        required :expires_at, Time

        # @!attribute frequency
        #   Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
        #
        #   @return [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency]
        required :frequency, enum: -> { Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency }

        # @!attribute merchant
        #
        #   @return [Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant]
        required :merchant, -> { Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant }

        # @!method initialize(amount:, expires_at:, frequency:, merchant:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate} for more
        #   details.
        #
        #   @param amount [Integer] Purchase amount and mandate limit in USD cents
        #
        #   @param expires_at [Time] Date and time when the mandate expires, independent of the payment credentials'
        #
        #   @param frequency [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency] Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
        #
        #   @param merchant [Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant]

        # Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
        #
        # @see Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate#frequency
        module Frequency
          extend Lithic::Internal::Type::Enum

          ONE_TIME = :ONE_TIME
          WEEKLY = :WEEKLY
          MONTHLY = :MONTHLY
          YEARLY = :YEARLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::TokenizationCreatePaymentCredentialsParams::Mandate#merchant
        class Merchant < Lithic::Internal::Type::BaseModel
          # @!attribute name
          #   Merchant name
          #
          #   @return [String]
          required :name, String

          # @!attribute url
          #   Merchant website URL
          #
          #   @return [String]
          required :url, String

          # @!method initialize(name:, url:)
          #   @param name [String] Merchant name
          #
          #   @param url [String] Merchant website URL
        end
      end

      # Type of purchase for which payment credentials are requested
      module Type
        extend Lithic::Internal::Type::Enum

        AUTONOMOUS = :AUTONOMOUS
        HUMAN_IN_THE_LOOP = :HUMAN_IN_THE_LOOP
        RECURRING = :RECURRING

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
