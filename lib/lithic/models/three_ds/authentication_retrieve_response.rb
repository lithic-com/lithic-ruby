# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      # @see Lithic::Resources::ThreeDS::Authentication#retrieve
      class AuthenticationRetrieveResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the 3DS authentication.
        #
        #   @return [String]
        required :token, String

        # @!attribute account_type
        #   Type of account/card that is being used for the transaction. Maps to EMV 3DS
        #   field `acctType`.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType, nil]
        required :account_type,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType },
                 nil?: true

        # @!attribute authentication_result
        #   Indicates the outcome of the 3DS authentication process.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult]
        required :authentication_result,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult }

        # @!attribute card_expiry_check
        #   Indicates whether the expiration date provided by the cardholder during checkout
        #   matches Lithic's record of the card's expiration date.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck]
        required :card_expiry_check,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck }

        # @!attribute card_token
        #   Globally unique identifier for the card on which the 3DS authentication has
        #   occurred.
        #
        #   @return [String]
        required :card_token, String

        # @!attribute cardholder
        #   Object containing data about the cardholder provided during the transaction.
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder]
        required :cardholder, -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder }

        # @!attribute channel
        #   Channel in which the authentication occurs. Maps to EMV 3DS field deviceChannel.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel]
        required :channel, enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel }

        # @!attribute created
        #   Date and time when the authentication was created in Lithic's system.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute merchant
        #   Object containing data about the merchant involved in the e-commerce
        #   transaction.
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant]
        required :merchant, -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant }

        # @!attribute message_category
        #   Either PAYMENT_AUTHENTICATION or NON_PAYMENT_AUTHENTICATION. For
        #   NON_PAYMENT_AUTHENTICATION, additional_data and transaction fields are not
        #   populated.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory]
        required :message_category,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory }

        # @!attribute three_ds_requestor_challenge_indicator
        #   Indicates whether a challenge is requested for this transaction
        #
        #   - `NO_PREFERENCE` - No Preference
        #   - `NO_CHALLENGE_REQUESTED` - No Challenge Requested
        #   - `CHALLENGE_PREFERENCE` - Challenge requested (3DS Requestor preference)
        #   - `CHALLENGE_MANDATE` - Challenge requested (Mandate)
        #   - `NO_CHALLENGE_RISK_ALREADY_ASSESSED` - No Challenge requested (Transactional
        #     risk analysis is already performed)
        #   - `DATA_SHARE_ONLY` - No Challenge requested (Data Share Only)
        #   - `OTHER` - Other indicators not captured by above. These are rarely used
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator]
        required :three_ds_requestor_challenge_indicator,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator }

        # @!attribute additional_data
        #   Object containing additional data about the 3DS request that is beyond the EMV
        #   3DS standard spec (e.g., specific fields that only certain card networks send
        #   but are not required across all 3DS requests).
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData, nil]
        optional :additional_data,
                 -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData },
                 nil?: true

        # @!attribute app
        #   Object containing data about the app used in the e-commerce transaction. Present
        #   if the channel is 'APP_BASED'.
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App, nil]
        optional :app, -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App }

        # @!attribute authentication_request_type
        #   Type of authentication request - i.e., the type of transaction or interaction is
        #   causing the merchant to request an authentication. Maps to EMV 3DS field
        #   threeDSRequestorAuthenticationInd.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType, nil]
        optional :authentication_request_type,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType },
                 nil?: true

        # @!attribute browser
        #   Object containing data about the browser used in the e-commerce transaction.
        #   Present if the channel is 'BROWSER'.
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser, nil]
        optional :browser, -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser }

        # @!attribute challenge_metadata
        #   Metadata about the challenge method and delivery.
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata, nil]
        optional :challenge_metadata,
                 -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata },
                 nil?: true

        # @!attribute challenge_orchestrated_by
        #   Entity that orchestrates the challenge.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy, nil]
        optional :challenge_orchestrated_by,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy },
                 nil?: true

        # @!attribute decision_made_by
        #   Entity that made the authentication decision.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy, nil]
        optional :decision_made_by,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy },
                 nil?: true

        # @!attribute three_ri_request_type
        #   Type of 3DS Requestor Initiated (3RI) request i.e., a 3DS authentication that
        #   takes place at the initiation of the merchant rather than the cardholder. The
        #   most common example of this is where a merchant is authenticating before billing
        #   for a recurring transaction such as a pay TV subscription or a utility bill.
        #   Maps to EMV 3DS field threeRIInd.
        #
        #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType, nil]
        optional :three_ri_request_type,
                 enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType },
                 nil?: true

        # @!attribute transaction
        #   Object containing data about the e-commerce transaction for which the merchant
        #   is requesting authentication.
        #
        #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction, nil]
        optional :transaction,
                 -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction },
                 nil?: true

        # @!method initialize(token:, account_type:, authentication_result:, card_expiry_check:, card_token:, cardholder:, channel:, created:, merchant:, message_category:, three_ds_requestor_challenge_indicator:, additional_data: nil, app: nil, authentication_request_type: nil, browser: nil, challenge_metadata: nil, challenge_orchestrated_by: nil, decision_made_by: nil, three_ri_request_type: nil, transaction: nil)
        #   @param token [String]
        #   @param account_type [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType, nil]
        #   @param authentication_result [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult]
        #   @param card_expiry_check [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck]
        #   @param card_token [String]
        #   @param cardholder [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder]
        #   @param channel [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel]
        #   @param created [Time]
        #   @param merchant [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant]
        #   @param message_category [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory]
        #   @param three_ds_requestor_challenge_indicator [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator]
        #   @param additional_data [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData, nil]
        #   @param app [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App]
        #   @param authentication_request_type [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType, nil]
        #   @param browser [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser]
        #   @param challenge_metadata [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata, nil]
        #   @param challenge_orchestrated_by [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy, nil]
        #   @param decision_made_by [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy, nil]
        #   @param three_ri_request_type [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType, nil]
        #   @param transaction [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction, nil]

        # Type of account/card that is being used for the transaction. Maps to EMV 3DS
        # field `acctType`.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#account_type
        module AccountType
          extend Lithic::Internal::Type::Enum

          CREDIT = :CREDIT
          DEBIT = :DEBIT
          NOT_APPLICABLE = :NOT_APPLICABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates the outcome of the 3DS authentication process.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#authentication_result
        module AuthenticationResult
          extend Lithic::Internal::Type::Enum

          DECLINE = :DECLINE
          SUCCESS = :SUCCESS
          PENDING_CHALLENGE = :PENDING_CHALLENGE
          PENDING_DECISION = :PENDING_DECISION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates whether the expiration date provided by the cardholder during checkout
        # matches Lithic's record of the card's expiration date.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#card_expiry_check
        module CardExpiryCheck
          extend Lithic::Internal::Type::Enum

          MATCH = :MATCH
          MISMATCH = :MISMATCH
          NOT_PRESENT = :NOT_PRESENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#cardholder
        class Cardholder < Lithic::Internal::Type::BaseModel
          # @!attribute address_match
          #   Indicates whether the shipping address and billing address provided by the
          #   cardholder are the same. This value - and assessment of whether the addresses
          #   match - is provided directly in the 3DS request and is not determined by Lithic.
          #   Maps to EMV 3DS field addrMatch.
          #
          #   @return [Boolean, nil]
          optional :address_match, Lithic::Internal::Type::Boolean, nil?: true

          # @!attribute billing_address
          #   Object containing data on the billing address provided during the transaction.
          #
          #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress, nil]
          optional :billing_address,
                   -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress }

          # @!attribute email
          #   Email address that is either provided by the cardholder or is on file with the
          #   merchant in a 3RI request. Maps to EMV 3DS field email.
          #
          #   @return [String, nil]
          optional :email, String, nil?: true

          # @!attribute name
          #   Name of the cardholder. Maps to EMV 3DS field cardholderName.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute phone_number_home
          #   Home phone number provided by the cardholder. Maps to EMV 3DS fields
          #   homePhone.cc and homePhone.subscriber.
          #
          #   @return [String, nil]
          optional :phone_number_home, String, nil?: true

          # @!attribute phone_number_mobile
          #   Mobile/cell phone number provided by the cardholder. Maps to EMV 3DS fields
          #   mobilePhone.cc and mobilePhone.subscriber.
          #
          #   @return [String, nil]
          optional :phone_number_mobile, String, nil?: true

          # @!attribute phone_number_work
          #   Work phone number provided by the cardholder. Maps to EMV 3DS fields
          #   workPhone.cc and workPhone.subscriber.
          #
          #   @return [String, nil]
          optional :phone_number_work, String, nil?: true

          # @!attribute shipping_address
          #   Object containing data on the shipping address provided during the transaction.
          #
          #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress, nil]
          optional :shipping_address,
                   -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress }

          # @!method initialize(address_match: nil, billing_address: nil, email: nil, name: nil, phone_number_home: nil, phone_number_mobile: nil, phone_number_work: nil, shipping_address: nil)
          #   Object containing data about the cardholder provided during the transaction.
          #
          #   @param address_match [Boolean, nil]
          #   @param billing_address [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress]
          #   @param email [String, nil]
          #   @param name [String, nil]
          #   @param phone_number_home [String, nil]
          #   @param phone_number_mobile [String, nil]
          #   @param phone_number_work [String, nil]
          #   @param shipping_address [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress]

          # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder#billing_address
          class BillingAddress < Lithic::Internal::Type::BaseModel
            # @!attribute address1
            #   First line of the street address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :address1, String, nil?: true

            # @!attribute address2
            #   Second line of the street address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :address2, String, nil?: true

            # @!attribute address3
            #   Third line of the street address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :address3, String, nil?: true

            # @!attribute city
            #   City of the address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :city, String, nil?: true

            # @!attribute country
            #   Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
            #   (e.g. USA)
            #
            #   @return [String, nil]
            optional :country, String, nil?: true

            # @!attribute postal_code
            #   Postal code (e.g., ZIP code) of the address provided by the cardholder
            #
            #   @return [String, nil]
            optional :postal_code, String, nil?: true

            # @!method initialize(address1: nil, address2: nil, address3: nil, city: nil, country: nil, postal_code: nil)
            #   Object containing data on the billing address provided during the transaction.
            #
            #   @param address1 [String, nil]
            #   @param address2 [String, nil]
            #   @param address3 [String, nil]
            #   @param city [String, nil]
            #   @param country [String, nil]
            #   @param postal_code [String, nil]
          end

          # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder#shipping_address
          class ShippingAddress < Lithic::Internal::Type::BaseModel
            # @!attribute address1
            #   First line of the street address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :address1, String, nil?: true

            # @!attribute address2
            #   Second line of the street address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :address2, String, nil?: true

            # @!attribute address3
            #   Third line of the street address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :address3, String, nil?: true

            # @!attribute city
            #   City of the address provided by the cardholder.
            #
            #   @return [String, nil]
            optional :city, String, nil?: true

            # @!attribute country
            #   Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
            #   (e.g. USA)
            #
            #   @return [String, nil]
            optional :country, String, nil?: true

            # @!attribute postal_code
            #   Postal code (e.g., ZIP code) of the address provided by the cardholder
            #
            #   @return [String, nil]
            optional :postal_code, String, nil?: true

            # @!method initialize(address1: nil, address2: nil, address3: nil, city: nil, country: nil, postal_code: nil)
            #   Object containing data on the shipping address provided during the transaction.
            #
            #   @param address1 [String, nil]
            #   @param address2 [String, nil]
            #   @param address3 [String, nil]
            #   @param city [String, nil]
            #   @param country [String, nil]
            #   @param postal_code [String, nil]
          end
        end

        # Channel in which the authentication occurs. Maps to EMV 3DS field deviceChannel.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#channel
        module Channel
          extend Lithic::Internal::Type::Enum

          APP_BASED = :APP_BASED
          BROWSER = :BROWSER
          THREE_DS_REQUESTOR_INITIATED = :THREE_DS_REQUESTOR_INITIATED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#merchant
        class Merchant < Lithic::Internal::Type::BaseModel
          # @!attribute id
          #   Merchant identifier as assigned by the acquirer. Maps to EMV 3DS field
          #   acquirerMerchantId.
          #
          #   @return [String]
          required :id, String

          # @!attribute country
          #   Country code of the merchant requesting 3DS authentication. Maps to EMV 3DS
          #   field merchantCountryCode.
          #
          #   @return [String]
          required :country, String

          # @!attribute mcc
          #   Merchant category code assigned to the merchant that describes its business
          #   activity type. Maps to EMV 3DS field mcc.
          #
          #   @return [String]
          required :mcc, String

          # @!attribute name
          #   Name of the merchant. Maps to EMV 3DS field merchantName.
          #
          #   @return [String]
          required :name, String

          # @!attribute risk_indicator
          #   Object containing additional data indicating additional risk factors related to
          #   the e-commerce transaction.
          #
          #   @return [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator]
          required :risk_indicator,
                   -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator }

          # @!method initialize(id:, country:, mcc:, name:, risk_indicator:)
          #   Object containing data about the merchant involved in the e-commerce
          #   transaction.
          #
          #   @param id [String]
          #   @param country [String]
          #   @param mcc [String]
          #   @param name [String]
          #   @param risk_indicator [Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator]

          # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant#risk_indicator
          class RiskIndicator < Lithic::Internal::Type::BaseModel
            # @!attribute delivery_email_address
            #   In transactions with electronic delivery, email address to which merchandise is
            #   delivered. Maps to EMV 3DS field deliveryEmailAddress.
            #
            #   @return [String, nil]
            optional :delivery_email_address, String, nil?: true

            # @!attribute delivery_time_frame
            #   The delivery time frame for the merchandise. Maps to EMV 3DS field
            #   deliveryTimeframe.
            #
            #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame, nil]
            optional :delivery_time_frame,
                     enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame },
                     nil?: true

            # @!attribute gift_card_amount
            #   In prepaid or gift card purchase transactions, purchase amount total in major
            #   units (e.g., a purchase of USD $205.10 would be 205). Maps to EMV 3DS field
            #   giftCardAmount.
            #
            #   @return [Integer, nil]
            optional :gift_card_amount, Integer, nil?: true

            # @!attribute gift_card_count
            #   In prepaid or gift card purchase transactions, count of individual prepaid or
            #   gift cards/codes purchased. Maps to EMV 3DS field giftCardCount.
            #
            #   @return [Integer, nil]
            optional :gift_card_count, Integer, nil?: true

            # @!attribute gift_card_currency
            #   In prepaid or gift card purchase transactions, currency code of the gift card.
            #   Maps to EMV 3DS field giftCardCurr.
            #
            #   @return [String, nil]
            optional :gift_card_currency, String, nil?: true

            # @!attribute order_availability
            #   Indicates whether the purchase is for merchandise that is available now or at a
            #   future date. Maps to EMV 3DS field preOrderPurchaseInd.
            #
            #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability, nil]
            optional :order_availability,
                     enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability },
                     nil?: true

            # @!attribute pre_order_available_date
            #   In pre-order purchase transactions, the expected date that the merchandise will
            #   be available. Maps to EMV 3DS field preOrderDate.
            #
            #   @return [Time, nil]
            optional :pre_order_available_date, Time, nil?: true

            # @!attribute reorder_items
            #   Indicates whether the cardholder is reordering previously purchased merchandise.
            #   Maps to EMV 3DS field reorderItemsInd.
            #
            #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems, nil]
            optional :reorder_items,
                     enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems },
                     nil?: true

            # @!attribute shipping_method
            #   Shipping method that the cardholder chose for the transaction. If purchase
            #   includes one or more item, this indicator is used for the physical goods; if the
            #   purchase only includes digital goods, this indicator is used to describe the
            #   most expensive item purchased. Maps to EMV 3DS field shipIndicator.
            #
            #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod, nil]
            optional :shipping_method,
                     enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod },
                     nil?: true

            # @!method initialize(delivery_email_address: nil, delivery_time_frame: nil, gift_card_amount: nil, gift_card_count: nil, gift_card_currency: nil, order_availability: nil, pre_order_available_date: nil, reorder_items: nil, shipping_method: nil)
            #   Object containing additional data indicating additional risk factors related to
            #   the e-commerce transaction.
            #
            #   @param delivery_email_address [String, nil]
            #   @param delivery_time_frame [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame, nil]
            #   @param gift_card_amount [Integer, nil]
            #   @param gift_card_count [Integer, nil]
            #   @param gift_card_currency [String, nil]
            #   @param order_availability [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability, nil]
            #   @param pre_order_available_date [Time, nil]
            #   @param reorder_items [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems, nil]
            #   @param shipping_method [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod, nil]

            # The delivery time frame for the merchandise. Maps to EMV 3DS field
            # deliveryTimeframe.
            #
            # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator#delivery_time_frame
            module DeliveryTimeFrame
              extend Lithic::Internal::Type::Enum

              ELECTRONIC_DELIVERY = :ELECTRONIC_DELIVERY
              OVERNIGHT_SHIPPING = :OVERNIGHT_SHIPPING
              SAME_DAY_SHIPPING = :SAME_DAY_SHIPPING
              TWO_DAY_OR_MORE_SHIPPING = :TWO_DAY_OR_MORE_SHIPPING

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Indicates whether the purchase is for merchandise that is available now or at a
            # future date. Maps to EMV 3DS field preOrderPurchaseInd.
            #
            # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator#order_availability
            module OrderAvailability
              extend Lithic::Internal::Type::Enum

              FUTURE_AVAILABILITY = :FUTURE_AVAILABILITY
              MERCHANDISE_AVAILABLE = :MERCHANDISE_AVAILABLE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Indicates whether the cardholder is reordering previously purchased merchandise.
            # Maps to EMV 3DS field reorderItemsInd.
            #
            # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator#reorder_items
            module ReorderItems
              extend Lithic::Internal::Type::Enum

              FIRST_TIME_ORDERED = :FIRST_TIME_ORDERED
              REORDERED = :REORDERED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Shipping method that the cardholder chose for the transaction. If purchase
            # includes one or more item, this indicator is used for the physical goods; if the
            # purchase only includes digital goods, this indicator is used to describe the
            # most expensive item purchased. Maps to EMV 3DS field shipIndicator.
            #
            # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator#shipping_method
            module ShippingMethod
              extend Lithic::Internal::Type::Enum

              DIGITAL_GOODS = :DIGITAL_GOODS
              LOCKER_DELIVERY = :LOCKER_DELIVERY
              OTHER = :OTHER
              PICK_UP_AND_GO_DELIVERY = :PICK_UP_AND_GO_DELIVERY
              SHIP_TO_BILLING_ADDRESS = :SHIP_TO_BILLING_ADDRESS
              SHIP_TO_NON_BILLING_ADDRESS = :SHIP_TO_NON_BILLING_ADDRESS
              SHIP_TO_OTHER_VERIFIED_ADDRESS = :SHIP_TO_OTHER_VERIFIED_ADDRESS
              SHIP_TO_STORE = :SHIP_TO_STORE
              TRAVEL_AND_EVENT_TICKETS = :TRAVEL_AND_EVENT_TICKETS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # Either PAYMENT_AUTHENTICATION or NON_PAYMENT_AUTHENTICATION. For
        # NON_PAYMENT_AUTHENTICATION, additional_data and transaction fields are not
        # populated.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#message_category
        module MessageCategory
          extend Lithic::Internal::Type::Enum

          NON_PAYMENT_AUTHENTICATION = :NON_PAYMENT_AUTHENTICATION
          PAYMENT_AUTHENTICATION = :PAYMENT_AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates whether a challenge is requested for this transaction
        #
        # - `NO_PREFERENCE` - No Preference
        # - `NO_CHALLENGE_REQUESTED` - No Challenge Requested
        # - `CHALLENGE_PREFERENCE` - Challenge requested (3DS Requestor preference)
        # - `CHALLENGE_MANDATE` - Challenge requested (Mandate)
        # - `NO_CHALLENGE_RISK_ALREADY_ASSESSED` - No Challenge requested (Transactional
        #   risk analysis is already performed)
        # - `DATA_SHARE_ONLY` - No Challenge requested (Data Share Only)
        # - `OTHER` - Other indicators not captured by above. These are rarely used
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#three_ds_requestor_challenge_indicator
        module ThreeDSRequestorChallengeIndicator
          extend Lithic::Internal::Type::Enum

          NO_PREFERENCE = :NO_PREFERENCE
          NO_CHALLENGE_REQUESTED = :NO_CHALLENGE_REQUESTED
          CHALLENGE_PREFERENCE = :CHALLENGE_PREFERENCE
          CHALLENGE_MANDATE = :CHALLENGE_MANDATE
          NO_CHALLENGE_RISK_ALREADY_ASSESSED = :NO_CHALLENGE_RISK_ALREADY_ASSESSED
          DATA_SHARE_ONLY = :DATA_SHARE_ONLY
          OTHER = :OTHER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#additional_data
        class AdditionalData < Lithic::Internal::Type::BaseModel
          # @!attribute network_decision
          #   Mastercard only: Indicates whether the network would have considered the
          #   authentication request to be low risk or not.
          #
          #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision, nil]
          optional :network_decision,
                   enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision },
                   nil?: true

          # @!attribute network_risk_score
          #   Mastercard only: Assessment by the network of the authentication risk level,
          #   with a higher value indicating a higher amount of risk.
          #
          #   @return [Integer, nil]
          optional :network_risk_score, Integer, nil?: true

          # @!method initialize(network_decision: nil, network_risk_score: nil)
          #   Object containing additional data about the 3DS request that is beyond the EMV
          #   3DS standard spec (e.g., specific fields that only certain card networks send
          #   but are not required across all 3DS requests).
          #
          #   @param network_decision [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision, nil]
          #   @param network_risk_score [Integer, nil]

          # Mastercard only: Indicates whether the network would have considered the
          # authentication request to be low risk or not.
          #
          # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData#network_decision
          module NetworkDecision
            extend Lithic::Internal::Type::Enum

            LOW_RISK = :LOW_RISK
            NOT_LOW_RISK = :NOT_LOW_RISK

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#app
        class App < Lithic::Internal::Type::BaseModel
          # @!attribute device_info
          #   Device information gathered from the cardholder's device - JSON name/value pairs
          #   that is Base64url encoded. Maps to EMV 3DS field deviceInfo.
          #
          #   @return [String, nil]
          optional :device_info, String, nil?: true

          # @!attribute ip
          #   External IP address used by the app generating the 3DS authentication request.
          #   Maps to EMV 3DS field appIp.
          #
          #   @return [String, nil]
          optional :ip, String

          # @!method initialize(device_info: nil, ip: nil)
          #   Object containing data about the app used in the e-commerce transaction. Present
          #   if the channel is 'APP_BASED'.
          #
          #   @param device_info [String, nil]
          #   @param ip [String]
        end

        # Type of authentication request - i.e., the type of transaction or interaction is
        # causing the merchant to request an authentication. Maps to EMV 3DS field
        # threeDSRequestorAuthenticationInd.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#authentication_request_type
        module AuthenticationRequestType
          extend Lithic::Internal::Type::Enum

          ADD_CARD = :ADD_CARD
          BILLING_AGREEMENT = :BILLING_AGREEMENT
          DELAYED_SHIPMENT = :DELAYED_SHIPMENT
          EMV_TOKEN_CARDHOLDER_VERIFICATION = :EMV_TOKEN_CARDHOLDER_VERIFICATION
          INSTALLMENT_TRANSACTION = :INSTALLMENT_TRANSACTION
          MAINTAIN_CARD = :MAINTAIN_CARD
          PAYMENT_TRANSACTION = :PAYMENT_TRANSACTION
          RECURRING_TRANSACTION = :RECURRING_TRANSACTION
          SPLIT_PAYMENT = :SPLIT_PAYMENT
          SPLIT_SHIPMENT = :SPLIT_SHIPMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#browser
        class Browser < Lithic::Internal::Type::BaseModel
          # @!attribute ip
          #   IP address of the browser as returned by the HTTP headers to the 3DS requestor
          #   (e.g., merchant or digital wallet). Maps to EMV 3DS field browserIP.
          #
          #   @return [String, nil]
          optional :ip, String, nil?: true

          # @!attribute java_enabled
          #   Indicates whether the cardholder's browser has the ability to execute Java. Maps
          #   to EMV 3DS field browserJavaEnabled.
          #
          #   @return [Boolean, nil]
          optional :java_enabled, Lithic::Internal::Type::Boolean, nil?: true

          # @!attribute javascript_enabled
          #   Indicates whether the cardholder's browser has the ability to execute
          #   JavaScript. Maps to EMV 3DS field browserJavascriptEnabled.
          #
          #   @return [Boolean, nil]
          optional :javascript_enabled, Lithic::Internal::Type::Boolean, nil?: true

          # @!attribute language
          #   Language of the cardholder's browser as defined in IETF BCP47. Maps to EMV 3DS
          #   field browserLanguage.
          #
          #   @return [String, nil]
          optional :language, String, nil?: true

          # @!attribute time_zone
          #   Time zone of the cardholder's browser offset in minutes between UTC and the
          #   cardholder browser's local time. The offset is positive if the local time is
          #   behind UTC and negative if it is ahead. Maps to EMV 3DS field browserTz.
          #
          #   @return [String, nil]
          optional :time_zone, String, nil?: true

          # @!attribute user_agent
          #   Content of the HTTP user-agent header. Maps to EMV 3DS field browserUserAgent.
          #
          #   @return [String, nil]
          optional :user_agent, String, nil?: true

          # @!method initialize(ip: nil, java_enabled: nil, javascript_enabled: nil, language: nil, time_zone: nil, user_agent: nil)
          #   Object containing data about the browser used in the e-commerce transaction.
          #   Present if the channel is 'BROWSER'.
          #
          #   @param ip [String, nil]
          #   @param java_enabled [Boolean, nil]
          #   @param javascript_enabled [Boolean, nil]
          #   @param language [String, nil]
          #   @param time_zone [String, nil]
          #   @param user_agent [String, nil]
        end

        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#challenge_metadata
        class ChallengeMetadata < Lithic::Internal::Type::BaseModel
          # @!attribute method_type
          #   The type of challenge method used for authentication.
          #
          #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType]
          required :method_type,
                   enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType }

          # @!attribute phone_number
          #   The phone number used for delivering the OTP. Relevant only for SMS_OTP method.
          #
          #   @return [String, nil]
          optional :phone_number, String, nil?: true

          # @!method initialize(method_type:, phone_number: nil)
          #   Metadata about the challenge method and delivery.
          #
          #   @param method_type [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType]
          #   @param phone_number [String, nil]

          # The type of challenge method used for authentication.
          #
          # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata#method_type
          module MethodType
            extend Lithic::Internal::Type::Enum

            SMS_OTP = :SMS_OTP
            OUT_OF_BAND = :OUT_OF_BAND

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Entity that orchestrates the challenge.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#challenge_orchestrated_by
        module ChallengeOrchestratedBy
          extend Lithic::Internal::Type::Enum

          LITHIC = :LITHIC
          CUSTOMER = :CUSTOMER
          NO_CHALLENGE = :NO_CHALLENGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Entity that made the authentication decision.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#decision_made_by
        module DecisionMadeBy
          extend Lithic::Internal::Type::Enum

          CUSTOMER_ENDPOINT = :CUSTOMER_ENDPOINT
          LITHIC_DEFAULT = :LITHIC_DEFAULT
          LITHIC_RULES = :LITHIC_RULES
          NETWORK = :NETWORK
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Type of 3DS Requestor Initiated (3RI) request i.e., a 3DS authentication that
        # takes place at the initiation of the merchant rather than the cardholder. The
        # most common example of this is where a merchant is authenticating before billing
        # for a recurring transaction such as a pay TV subscription or a utility bill.
        # Maps to EMV 3DS field threeRIInd.
        #
        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#three_ri_request_type
        module ThreeRiRequestType
          extend Lithic::Internal::Type::Enum

          ACCOUNT_VERIFICATION = :ACCOUNT_VERIFICATION
          ADD_CARD = :ADD_CARD
          BILLING_AGREEMENT = :BILLING_AGREEMENT
          CARD_SECURITY_CODE_STATUS_CHECK = :CARD_SECURITY_CODE_STATUS_CHECK
          DELAYED_SHIPMENT = :DELAYED_SHIPMENT
          DEVICE_BINDING_STATUS_CHECK = :DEVICE_BINDING_STATUS_CHECK
          INSTALLMENT_TRANSACTION = :INSTALLMENT_TRANSACTION
          MAIL_ORDER = :MAIL_ORDER
          MAINTAIN_CARD_INFO = :MAINTAIN_CARD_INFO
          OTHER_PAYMENT = :OTHER_PAYMENT
          RECURRING_TRANSACTION = :RECURRING_TRANSACTION
          SPLIT_PAYMENT = :SPLIT_PAYMENT
          SPLIT_SHIPMENT = :SPLIT_SHIPMENT
          TELEPHONE_ORDER = :TELEPHONE_ORDER
          TOP_UP = :TOP_UP
          TRUST_LIST_STATUS_CHECK = :TRUST_LIST_STATUS_CHECK

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse#transaction
        class Transaction < Lithic::Internal::Type::BaseModel
          # @!attribute amount
          #   Amount of the purchase in minor units of currency with all punctuation removed.
          #   Maps to EMV 3DS field purchaseAmount.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute currency
          #   Currency of the purchase. Maps to EMV 3DS field purchaseCurrency.
          #
          #   @return [String]
          required :currency, String

          # @!attribute currency_exponent
          #   Minor units of currency, as specified in ISO 4217 currency exponent. Maps to EMV
          #   3DS field purchaseExponent.
          #
          #   @return [Float]
          required :currency_exponent, Float

          # @!attribute date_time
          #   Date and time when the authentication was generated by the merchant/acquirer's
          #   3DS server. Maps to EMV 3DS field purchaseDate.
          #
          #   @return [Time]
          required :date_time, Time

          # @!attribute type
          #   Type of the transaction for which a 3DS authentication request is occurring.
          #   Maps to EMV 3DS field transType.
          #
          #   @return [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type, nil]
          required :type,
                   enum: -> { Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type },
                   nil?: true

          # @!method initialize(amount:, currency:, currency_exponent:, date_time:, type:)
          #   Object containing data about the e-commerce transaction for which the merchant
          #   is requesting authentication.
          #
          #   @param amount [Float]
          #   @param currency [String]
          #   @param currency_exponent [Float]
          #   @param date_time [Time]
          #   @param type [Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type, nil]

          # Type of the transaction for which a 3DS authentication request is occurring.
          # Maps to EMV 3DS field transType.
          #
          # @see Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction#type
          module Type
            extend Lithic::Internal::Type::Enum

            ACCOUNT_FUNDING = :ACCOUNT_FUNDING
            CHECK_ACCEPTANCE = :CHECK_ACCEPTANCE
            GOODS_SERVICE_PURCHASE = :GOODS_SERVICE_PURCHASE
            PREPAID_ACTIVATION_AND_LOAD = :PREPAID_ACTIVATION_AND_LOAD
            QUASI_CASH_TRANSACTION = :QUASI_CASH_TRANSACTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
