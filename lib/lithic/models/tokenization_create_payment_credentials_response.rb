# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#create_payment_credentials
    class TokenizationCreatePaymentCredentialsResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the payment credential resource
      #
      #   @return [String]
      required :token, String

      # @!attribute agent_token
      #   Globally unique identifier for the associated agent
      #
      #   @return [String]
      required :agent_token, String

      # @!attribute created_at
      #   Date and time when the payment credential resource was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credentials
      #   Payment credential and dynamic security code for the purchase
      #
      #   @return [Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials]
      required :credentials, -> { Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials }

      # @!attribute mandate
      #
      #   @return [Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate]
      required :mandate, -> { Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate }

      # @!attribute status
      #   Status of the payment credential resource. New credentials have status ACTIVE
      #
      #   @return [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status]
      required :status, enum: -> { Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status }

      # @!attribute tokenization_token
      #   Globally unique identifier for the associated tokenization
      #
      #   @return [String]
      required :tokenization_token, String

      # @!attribute type
      #   Type of purchase for which payment credentials are requested
      #
      #   @return [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type]
      required :type, enum: -> { Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type }

      # @!attribute updated_at
      #   Date and time when the payment credential resource was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(token:, agent_token:, created_at:, credentials:, mandate:, status:, tokenization_token:, type:, updated_at:)
      #   @param token [String] Globally unique identifier for the payment credential resource
      #
      #   @param agent_token [String] Globally unique identifier for the associated agent
      #
      #   @param created_at [Time] Date and time when the payment credential resource was created
      #
      #   @param credentials [Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials] Payment credential and dynamic security code for the purchase
      #
      #   @param mandate [Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate]
      #
      #   @param status [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status] Status of the payment credential resource. New credentials have status ACTIVE
      #
      #   @param tokenization_token [String] Globally unique identifier for the associated tokenization
      #
      #   @param type [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type] Type of purchase for which payment credentials are requested
      #
      #   @param updated_at [Time] Date and time when the payment credential resource was last updated

      # @see Lithic::Models::TokenizationCreatePaymentCredentialsResponse#credentials
      class Credentials < Lithic::Internal::Type::BaseModel
        # @!attribute cvv
        #   Dynamic card security code for the purchase
        #
        #   @return [String]
        required :cvv, String

        # @!attribute expiration_month
        #   Expiration month of the payment credential
        #
        #   @return [String]
        required :expiration_month, String

        # @!attribute expiration_year
        #   Expiration year of the payment credential
        #
        #   @return [String]
        required :expiration_year, String

        # @!attribute expires_at
        #   Date and time when the dynamic security code expires
        #
        #   @return [Time]
        required :expires_at, Time

        # @!attribute value
        #   Payment credential to use as the card number for the purchase
        #
        #   @return [String]
        required :value, String

        # @!method initialize(cvv:, expiration_month:, expiration_year:, expires_at:, value:)
        #   Payment credential and dynamic security code for the purchase
        #
        #   @param cvv [String] Dynamic card security code for the purchase
        #
        #   @param expiration_month [String] Expiration month of the payment credential
        #
        #   @param expiration_year [String] Expiration year of the payment credential
        #
        #   @param expires_at [Time] Date and time when the dynamic security code expires
        #
        #   @param value [String] Payment credential to use as the card number for the purchase
      end

      # @see Lithic::Models::TokenizationCreatePaymentCredentialsResponse#mandate
      class Mandate < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the mandate
        #
        #   @return [String]
        required :token, String

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
        #   @return [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency]
        required :frequency,
                 enum: -> { Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency }

        # @!attribute merchant
        #
        #   @return [Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant]
        required :merchant, -> { Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant }

        # @!attribute status
        #   Status of the mandate. New mandates have status PENDING
        #
        #   @return [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status]
        required :status,
                 enum: -> { Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status }

        # @!method initialize(token:, amount:, expires_at:, frequency:, merchant:, status:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate} for more
        #   details.
        #
        #   @param token [String] Globally unique identifier for the mandate
        #
        #   @param amount [Integer] Purchase amount and mandate limit in USD cents
        #
        #   @param expires_at [Time] Date and time when the mandate expires, independent of the payment credentials'
        #
        #   @param frequency [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency] Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
        #
        #   @param merchant [Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant]
        #
        #   @param status [Symbol, Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status] Status of the mandate. New mandates have status PENDING

        # Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
        #
        # @see Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate#frequency
        module Frequency
          extend Lithic::Internal::Type::Enum

          ONE_TIME = :ONE_TIME
          WEEKLY = :WEEKLY
          MONTHLY = :MONTHLY
          YEARLY = :YEARLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate#merchant
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

        # Status of the mandate. New mandates have status PENDING
        #
        # @see Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate#status
        module Status
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          COMPLETED = :COMPLETED
          CANCELLED = :CANCELLED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Status of the payment credential resource. New credentials have status ACTIVE
      #
      # @see Lithic::Models::TokenizationCreatePaymentCredentialsResponse#status
      module Status
        extend Lithic::Internal::Type::Enum

        ACTIVE = :ACTIVE
        DEACTIVATED = :DEACTIVATED
        COMPLETED = :COMPLETED
        CANCELLED = :CANCELLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Type of purchase for which payment credentials are requested
      #
      # @see Lithic::Models::TokenizationCreatePaymentCredentialsResponse#type
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
