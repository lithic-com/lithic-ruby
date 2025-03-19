# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationRetrieveResponse < Lithic::BaseModel
        # Globally unique identifier for the 3DS authentication.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Type of account/card that is being used for the transaction. Maps to EMV 3DS
        #   field `acctType`.
        sig { returns(T.nilable(Symbol)) }
        def account_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def account_type=(_)
        end

        # Indicates the outcome of the 3DS authentication process.
        sig { returns(Symbol) }
        def authentication_result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def authentication_result=(_)
        end

        # Indicates whether the expiration date provided by the cardholder during checkout
        #   matches Lithic's record of the card's expiration date.
        sig { returns(Symbol) }
        def card_expiry_check
        end

        sig { params(_: Symbol).returns(Symbol) }
        def card_expiry_check=(_)
        end

        # Globally unique identifier for the card on which the 3DS authentication has
        #   occurred.
        sig { returns(String) }
        def card_token
        end

        sig { params(_: String).returns(String) }
        def card_token=(_)
        end

        # Object containing data about the cardholder provided during the transaction.
        sig { returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder) }
        def cardholder
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder)
        end
        def cardholder=(_)
        end

        # Channel in which the authentication occurs. Maps to EMV 3DS field deviceChannel.
        sig { returns(Symbol) }
        def channel
        end

        sig { params(_: Symbol).returns(Symbol) }
        def channel=(_)
        end

        # Date and time when the authentication was created in Lithic's system.
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # Object containing data about the merchant involved in the e-commerce
        #   transaction.
        sig { returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant) }
        def merchant
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant)
        end
        def merchant=(_)
        end

        # Either PAYMENT_AUTHENTICATION or NON_PAYMENT_AUTHENTICATION. For
        #   NON_PAYMENT_AUTHENTICATION, additional_data and transaction fields are not
        #   populated.
        sig { returns(Symbol) }
        def message_category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def message_category=(_)
        end

        # Indicates whether a challenge is requested for this transaction
        #
        #   - `NO_PREFERENCE` - No Preference
        #   - `NO_CHALLENGE_REQUESTED` - No Challenge Requested
        #   - `CHALLENGE_PREFERENCE` - Challenge requested (3DS Requestor preference)
        #   - `CHALLENGE_MANDATE` - Challenge requested (Mandate)
        #   - `NO_CHALLENGE_RISK_ALREADY_ASSESSED` - No Challenge requested (Transactional
        #     risk analysis is already performed)
        #   - `DATA_SHARE_ONLY` - No Challenge requested (Data Share Only)
        #   - `OTHER` - Other indicators not captured by above. These are rarely used
        sig { returns(Symbol) }
        def three_ds_requestor_challenge_indicator
        end

        sig { params(_: Symbol).returns(Symbol) }
        def three_ds_requestor_challenge_indicator=(_)
        end

        # Object containing additional data about the 3DS request that is beyond the EMV
        #   3DS standard spec (e.g., specific fields that only certain card networks send
        #   but are not required across all 3DS requests).
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData)) }
        def additional_data
        end

        sig do
          params(_: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData))
            .returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData))
        end
        def additional_data=(_)
        end

        # Object containing data about the app used in the e-commerce transaction. Present
        #   if the channel is 'APP_BASED'.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App)) }
        def app
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App)
        end
        def app=(_)
        end

        # Type of authentication request - i.e., the type of transaction or interaction is
        #   causing the merchant to request an authentication. Maps to EMV 3DS field
        #   threeDSRequestorAuthenticationInd.
        sig { returns(T.nilable(Symbol)) }
        def authentication_request_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def authentication_request_type=(_)
        end

        # Object containing data about the browser used in the e-commerce transaction.
        #   Present if the channel is 'BROWSER'.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser)) }
        def browser
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser)
        end
        def browser=(_)
        end

        # Metadata about the challenge method and delivery.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata)) }
        def challenge_metadata
        end

        sig do
          params(_: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata))
            .returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata))
        end
        def challenge_metadata=(_)
        end

        # Entity that orchestrates the challenge.
        sig { returns(T.nilable(Symbol)) }
        def challenge_orchestrated_by
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def challenge_orchestrated_by=(_)
        end

        # Entity that made the authentication decision.
        sig { returns(T.nilable(Symbol)) }
        def decision_made_by
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def decision_made_by=(_)
        end

        # Type of 3DS Requestor Initiated (3RI) request i.e., a 3DS authentication that
        #   takes place at the initiation of the merchant rather than the cardholder. The
        #   most common example of this is where a merchant is authenticating before billing
        #   for a recurring transaction such as a pay TV subscription or a utility bill.
        #   Maps to EMV 3DS field threeRIInd.
        sig { returns(T.nilable(Symbol)) }
        def three_ri_request_type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def three_ri_request_type=(_)
        end

        # Object containing data about the e-commerce transaction for which the merchant
        #   is requesting authentication.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction)) }
        def transaction
        end

        sig do
          params(_: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction))
            .returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction))
        end
        def transaction=(_)
        end

        sig do
          params(
            token: String,
            account_type: T.nilable(Symbol),
            authentication_result: Symbol,
            card_expiry_check: Symbol,
            card_token: String,
            cardholder: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder,
            channel: Symbol,
            created: Time,
            merchant: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant,
            message_category: Symbol,
            three_ds_requestor_challenge_indicator: Symbol,
            additional_data: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData),
            app: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App,
            authentication_request_type: T.nilable(Symbol),
            browser: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser,
            challenge_metadata: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata),
            challenge_orchestrated_by: T.nilable(Symbol),
            decision_made_by: T.nilable(Symbol),
            three_ri_request_type: T.nilable(Symbol),
            transaction: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction)
          )
            .returns(T.attached_class)
        end
        def self.new(
          token:,
          account_type:,
          authentication_result:,
          card_expiry_check:,
          card_token:,
          cardholder:,
          channel:,
          created:,
          merchant:,
          message_category:,
          three_ds_requestor_challenge_indicator:,
          additional_data: nil,
          app: nil,
          authentication_request_type: nil,
          browser: nil,
          challenge_metadata: nil,
          challenge_orchestrated_by: nil,
          decision_made_by: nil,
          three_ri_request_type: nil,
          transaction: nil
        )
        end

        sig do
          override
            .returns(
              {
                token: String,
                account_type: T.nilable(Symbol),
                authentication_result: Symbol,
                card_expiry_check: Symbol,
                card_token: String,
                cardholder: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder,
                channel: Symbol,
                created: Time,
                merchant: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant,
                message_category: Symbol,
                three_ds_requestor_challenge_indicator: Symbol,
                additional_data: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData),
                app: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App,
                authentication_request_type: T.nilable(Symbol),
                browser: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser,
                challenge_metadata: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata),
                challenge_orchestrated_by: T.nilable(Symbol),
                decision_made_by: T.nilable(Symbol),
                three_ri_request_type: T.nilable(Symbol),
                transaction: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction)
              }
            )
        end
        def to_hash
        end

        # Type of account/card that is being used for the transaction. Maps to EMV 3DS
        #   field `acctType`.
        class AccountType < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CREDIT = :CREDIT
          DEBIT = :DEBIT
          NOT_APPLICABLE = :NOT_APPLICABLE
        end

        # Indicates the outcome of the 3DS authentication process.
        class AuthenticationResult < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          DECLINE = :DECLINE
          SUCCESS = :SUCCESS
          PENDING_CHALLENGE = :PENDING_CHALLENGE
          PENDING_DECISION = :PENDING_DECISION
        end

        # Indicates whether the expiration date provided by the cardholder during checkout
        #   matches Lithic's record of the card's expiration date.
        class CardExpiryCheck < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          MATCH = :MATCH
          MISMATCH = :MISMATCH
          NOT_PRESENT = :NOT_PRESENT
        end

        class Cardholder < Lithic::BaseModel
          # Indicates whether the shipping address and billing address provided by the
          #   cardholder are the same. This value - and assessment of whether the addresses
          #   match - is provided directly in the 3DS request and is not determined by Lithic.
          #   Maps to EMV 3DS field addrMatch.
          sig { returns(T.nilable(T::Boolean)) }
          def address_match
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def address_match=(_)
          end

          # Object containing data on the billing address provided during the transaction.
          sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress)) }
          def billing_address
          end

          sig do
            params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress)
              .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress)
          end
          def billing_address=(_)
          end

          # Email address that is either provided by the cardholder or is on file with the
          #   merchant in a 3RI request. Maps to EMV 3DS field email.
          sig { returns(T.nilable(String)) }
          def email
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_)
          end

          # Name of the cardholder. Maps to EMV 3DS field cardholderName.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # Home phone number provided by the cardholder. Maps to EMV 3DS fields
          #   homePhone.cc and homePhone.subscriber.
          sig { returns(T.nilable(String)) }
          def phone_number_home
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def phone_number_home=(_)
          end

          # Mobile/cell phone number provided by the cardholder. Maps to EMV 3DS fields
          #   mobilePhone.cc and mobilePhone.subscriber.
          sig { returns(T.nilable(String)) }
          def phone_number_mobile
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def phone_number_mobile=(_)
          end

          # Work phone number provided by the cardholder. Maps to EMV 3DS fields
          #   workPhone.cc and workPhone.subscriber.
          sig { returns(T.nilable(String)) }
          def phone_number_work
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def phone_number_work=(_)
          end

          # Object containing data on the shipping address provided during the transaction.
          sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress)) }
          def shipping_address
          end

          sig do
            params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress)
              .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress)
          end
          def shipping_address=(_)
          end

          # Object containing data about the cardholder provided during the transaction.
          sig do
            params(
              address_match: T.nilable(T::Boolean),
              billing_address: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress,
              email: T.nilable(String),
              name: T.nilable(String),
              phone_number_home: T.nilable(String),
              phone_number_mobile: T.nilable(String),
              phone_number_work: T.nilable(String),
              shipping_address: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress
            )
              .returns(T.attached_class)
          end
          def self.new(
            address_match: nil,
            billing_address: nil,
            email: nil,
            name: nil,
            phone_number_home: nil,
            phone_number_mobile: nil,
            phone_number_work: nil,
            shipping_address: nil
          )
          end

          sig do
            override
              .returns(
                {
                  address_match: T.nilable(T::Boolean),
                  billing_address: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress,
                  email: T.nilable(String),
                  name: T.nilable(String),
                  phone_number_home: T.nilable(String),
                  phone_number_mobile: T.nilable(String),
                  phone_number_work: T.nilable(String),
                  shipping_address: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress
                }
              )
          end
          def to_hash
          end

          class BillingAddress < Lithic::BaseModel
            # First line of the street address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def address1
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def address1=(_)
            end

            # Second line of the street address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def address2
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def address2=(_)
            end

            # Third line of the street address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def address3
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def address3=(_)
            end

            # City of the address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def city
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_)
            end

            # Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
            #   (e.g. USA)
            sig { returns(T.nilable(String)) }
            def country
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_)
            end

            # Postal code (e.g., ZIP code) of the address provided by the cardholder
            sig { returns(T.nilable(String)) }
            def postal_code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_)
            end

            # Object containing data on the billing address provided during the transaction.
            sig do
              params(
                address1: T.nilable(String),
                address2: T.nilable(String),
                address3: T.nilable(String),
                city: T.nilable(String),
                country: T.nilable(String),
                postal_code: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(address1: nil, address2: nil, address3: nil, city: nil, country: nil, postal_code: nil)
            end

            sig do
              override
                .returns(
                  {
                    address1: T.nilable(String),
                    address2: T.nilable(String),
                    address3: T.nilable(String),
                    city: T.nilable(String),
                    country: T.nilable(String),
                    postal_code: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          class ShippingAddress < Lithic::BaseModel
            # First line of the street address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def address1
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def address1=(_)
            end

            # Second line of the street address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def address2
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def address2=(_)
            end

            # Third line of the street address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def address3
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def address3=(_)
            end

            # City of the address provided by the cardholder.
            sig { returns(T.nilable(String)) }
            def city
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_)
            end

            # Country of the address provided by the cardholder in ISO 3166-1 alpha-3 format
            #   (e.g. USA)
            sig { returns(T.nilable(String)) }
            def country
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_)
            end

            # Postal code (e.g., ZIP code) of the address provided by the cardholder
            sig { returns(T.nilable(String)) }
            def postal_code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_)
            end

            # Object containing data on the shipping address provided during the transaction.
            sig do
              params(
                address1: T.nilable(String),
                address2: T.nilable(String),
                address3: T.nilable(String),
                city: T.nilable(String),
                country: T.nilable(String),
                postal_code: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(address1: nil, address2: nil, address3: nil, city: nil, country: nil, postal_code: nil)
            end

            sig do
              override
                .returns(
                  {
                    address1: T.nilable(String),
                    address2: T.nilable(String),
                    address3: T.nilable(String),
                    city: T.nilable(String),
                    country: T.nilable(String),
                    postal_code: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end
        end

        # Channel in which the authentication occurs. Maps to EMV 3DS field deviceChannel.
        class Channel < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APP_BASED = :APP_BASED
          BROWSER = :BROWSER
          THREE_DS_REQUESTOR_INITIATED = :THREE_DS_REQUESTOR_INITIATED
        end

        class Merchant < Lithic::BaseModel
          # Merchant identifier as assigned by the acquirer. Maps to EMV 3DS field
          #   acquirerMerchantId.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # Country code of the merchant requesting 3DS authentication. Maps to EMV 3DS
          #   field merchantCountryCode.
          sig { returns(String) }
          def country
          end

          sig { params(_: String).returns(String) }
          def country=(_)
          end

          # Merchant category code assigned to the merchant that describes its business
          #   activity type. Maps to EMV 3DS field mcc.
          sig { returns(String) }
          def mcc
          end

          sig { params(_: String).returns(String) }
          def mcc=(_)
          end

          # Name of the merchant. Maps to EMV 3DS field merchantName.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # Object containing additional data indicating additional risk factors related to
          #   the e-commerce transaction.
          sig { returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator) }
          def risk_indicator
          end

          sig do
            params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator)
              .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator)
          end
          def risk_indicator=(_)
          end

          # Object containing data about the merchant involved in the e-commerce
          #   transaction.
          sig do
            params(
              id: String,
              country: String,
              mcc: String,
              name: String,
              risk_indicator: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator
            )
              .returns(T.attached_class)
          end
          def self.new(id:, country:, mcc:, name:, risk_indicator:)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  country: String,
                  mcc: String,
                  name: String,
                  risk_indicator: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator
                }
              )
          end
          def to_hash
          end

          class RiskIndicator < Lithic::BaseModel
            # In transactions with electronic delivery, email address to which merchandise is
            #   delivered. Maps to EMV 3DS field deliveryEmailAddress.
            sig { returns(T.nilable(String)) }
            def delivery_email_address
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def delivery_email_address=(_)
            end

            # The delivery time frame for the merchandise. Maps to EMV 3DS field
            #   deliveryTimeframe.
            sig { returns(T.nilable(Symbol)) }
            def delivery_time_frame
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def delivery_time_frame=(_)
            end

            # In prepaid or gift card purchase transactions, purchase amount total in major
            #   units (e.g., a purchase of USD $205.10 would be 205). Maps to EMV 3DS field
            #   giftCardAmount.
            sig { returns(T.nilable(Integer)) }
            def gift_card_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def gift_card_amount=(_)
            end

            # In prepaid or gift card purchase transactions, count of individual prepaid or
            #   gift cards/codes purchased. Maps to EMV 3DS field giftCardCount.
            sig { returns(T.nilable(Integer)) }
            def gift_card_count
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def gift_card_count=(_)
            end

            # In prepaid or gift card purchase transactions, currency code of the gift card.
            #   Maps to EMV 3DS field giftCardCurr.
            sig { returns(T.nilable(String)) }
            def gift_card_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def gift_card_currency=(_)
            end

            # Indicates whether the purchase is for merchandise that is available now or at a
            #   future date. Maps to EMV 3DS field preOrderPurchaseInd.
            sig { returns(T.nilable(Symbol)) }
            def order_availability
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def order_availability=(_)
            end

            # In pre-order purchase transactions, the expected date that the merchandise will
            #   be available. Maps to EMV 3DS field preOrderDate.
            sig { returns(T.nilable(Time)) }
            def pre_order_available_date
            end

            sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
            def pre_order_available_date=(_)
            end

            # Indicates whether the cardholder is reordering previously purchased merchandise.
            #   Maps to EMV 3DS field reorderItemsInd.
            sig { returns(T.nilable(Symbol)) }
            def reorder_items
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def reorder_items=(_)
            end

            # Shipping method that the cardholder chose for the transaction. If purchase
            #   includes one or more item, this indicator is used for the physical goods; if the
            #   purchase only includes digital goods, this indicator is used to describe the
            #   most expensive item purchased. Maps to EMV 3DS field shipIndicator.
            sig { returns(T.nilable(Symbol)) }
            def shipping_method
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def shipping_method=(_)
            end

            # Object containing additional data indicating additional risk factors related to
            #   the e-commerce transaction.
            sig do
              params(
                delivery_email_address: T.nilable(String),
                delivery_time_frame: T.nilable(Symbol),
                gift_card_amount: T.nilable(Integer),
                gift_card_count: T.nilable(Integer),
                gift_card_currency: T.nilable(String),
                order_availability: T.nilable(Symbol),
                pre_order_available_date: T.nilable(Time),
                reorder_items: T.nilable(Symbol),
                shipping_method: T.nilable(Symbol)
              )
                .returns(T.attached_class)
            end
            def self.new(
              delivery_email_address: nil,
              delivery_time_frame: nil,
              gift_card_amount: nil,
              gift_card_count: nil,
              gift_card_currency: nil,
              order_availability: nil,
              pre_order_available_date: nil,
              reorder_items: nil,
              shipping_method: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    delivery_email_address: T.nilable(String),
                    delivery_time_frame: T.nilable(Symbol),
                    gift_card_amount: T.nilable(Integer),
                    gift_card_count: T.nilable(Integer),
                    gift_card_currency: T.nilable(String),
                    order_availability: T.nilable(Symbol),
                    pre_order_available_date: T.nilable(Time),
                    reorder_items: T.nilable(Symbol),
                    shipping_method: T.nilable(Symbol)
                  }
                )
            end
            def to_hash
            end

            # The delivery time frame for the merchandise. Maps to EMV 3DS field
            #   deliveryTimeframe.
            class DeliveryTimeFrame < Lithic::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              ELECTRONIC_DELIVERY = :ELECTRONIC_DELIVERY
              OVERNIGHT_SHIPPING = :OVERNIGHT_SHIPPING
              SAME_DAY_SHIPPING = :SAME_DAY_SHIPPING
              TWO_DAY_OR_MORE_SHIPPING = :TWO_DAY_OR_MORE_SHIPPING
            end

            # Indicates whether the purchase is for merchandise that is available now or at a
            #   future date. Maps to EMV 3DS field preOrderPurchaseInd.
            class OrderAvailability < Lithic::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              FUTURE_AVAILABILITY = :FUTURE_AVAILABILITY
              MERCHANDISE_AVAILABLE = :MERCHANDISE_AVAILABLE
            end

            # Indicates whether the cardholder is reordering previously purchased merchandise.
            #   Maps to EMV 3DS field reorderItemsInd.
            class ReorderItems < Lithic::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              FIRST_TIME_ORDERED = :FIRST_TIME_ORDERED
              REORDERED = :REORDERED
            end

            # Shipping method that the cardholder chose for the transaction. If purchase
            #   includes one or more item, this indicator is used for the physical goods; if the
            #   purchase only includes digital goods, this indicator is used to describe the
            #   most expensive item purchased. Maps to EMV 3DS field shipIndicator.
            class ShippingMethod < Lithic::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              DIGITAL_GOODS = :DIGITAL_GOODS
              LOCKER_DELIVERY = :LOCKER_DELIVERY
              OTHER = :OTHER
              PICK_UP_AND_GO_DELIVERY = :PICK_UP_AND_GO_DELIVERY
              SHIP_TO_BILLING_ADDRESS = :SHIP_TO_BILLING_ADDRESS
              SHIP_TO_NON_BILLING_ADDRESS = :SHIP_TO_NON_BILLING_ADDRESS
              SHIP_TO_OTHER_VERIFIED_ADDRESS = :SHIP_TO_OTHER_VERIFIED_ADDRESS
              SHIP_TO_STORE = :SHIP_TO_STORE
              TRAVEL_AND_EVENT_TICKETS = :TRAVEL_AND_EVENT_TICKETS
            end
          end
        end

        # Either PAYMENT_AUTHENTICATION or NON_PAYMENT_AUTHENTICATION. For
        #   NON_PAYMENT_AUTHENTICATION, additional_data and transaction fields are not
        #   populated.
        class MessageCategory < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          NON_PAYMENT_AUTHENTICATION = :NON_PAYMENT_AUTHENTICATION
          PAYMENT_AUTHENTICATION = :PAYMENT_AUTHENTICATION
        end

        # Indicates whether a challenge is requested for this transaction
        #
        #   - `NO_PREFERENCE` - No Preference
        #   - `NO_CHALLENGE_REQUESTED` - No Challenge Requested
        #   - `CHALLENGE_PREFERENCE` - Challenge requested (3DS Requestor preference)
        #   - `CHALLENGE_MANDATE` - Challenge requested (Mandate)
        #   - `NO_CHALLENGE_RISK_ALREADY_ASSESSED` - No Challenge requested (Transactional
        #     risk analysis is already performed)
        #   - `DATA_SHARE_ONLY` - No Challenge requested (Data Share Only)
        #   - `OTHER` - Other indicators not captured by above. These are rarely used
        class ThreeDSRequestorChallengeIndicator < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          NO_PREFERENCE = :NO_PREFERENCE
          NO_CHALLENGE_REQUESTED = :NO_CHALLENGE_REQUESTED
          CHALLENGE_PREFERENCE = :CHALLENGE_PREFERENCE
          CHALLENGE_MANDATE = :CHALLENGE_MANDATE
          NO_CHALLENGE_RISK_ALREADY_ASSESSED = :NO_CHALLENGE_RISK_ALREADY_ASSESSED
          DATA_SHARE_ONLY = :DATA_SHARE_ONLY
          OTHER = :OTHER
        end

        class AdditionalData < Lithic::BaseModel
          # Mastercard only: Indicates whether the network would have considered the
          #   authentication request to be low risk or not.
          sig { returns(T.nilable(Symbol)) }
          def network_decision
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def network_decision=(_)
          end

          # Mastercard only: Assessment by the network of the authentication risk level,
          #   with a higher value indicating a higher amount of risk.
          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          # Object containing additional data about the 3DS request that is beyond the EMV
          #   3DS standard spec (e.g., specific fields that only certain card networks send
          #   but are not required across all 3DS requests).
          sig do
            params(network_decision: T.nilable(Symbol), network_risk_score: T.nilable(Integer))
              .returns(T.attached_class)
          end
          def self.new(network_decision: nil, network_risk_score: nil)
          end

          sig do
            override.returns({network_decision: T.nilable(Symbol), network_risk_score: T.nilable(Integer)})
          end
          def to_hash
          end

          # Mastercard only: Indicates whether the network would have considered the
          #   authentication request to be low risk or not.
          class NetworkDecision < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            LOW_RISK = :LOW_RISK
            NOT_LOW_RISK = :NOT_LOW_RISK
          end
        end

        class App < Lithic::BaseModel
          # Device information gathered from the cardholder's device - JSON name/value pairs
          #   that is Base64url encoded. Maps to EMV 3DS field deviceInfo.
          sig { returns(T.nilable(String)) }
          def device_info
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def device_info=(_)
          end

          # External IP address used by the app generating the 3DS authentication request.
          #   Maps to EMV 3DS field appIp.
          sig { returns(T.nilable(String)) }
          def ip
          end

          sig { params(_: String).returns(String) }
          def ip=(_)
          end

          # Object containing data about the app used in the e-commerce transaction. Present
          #   if the channel is 'APP_BASED'.
          sig { params(device_info: T.nilable(String), ip: String).returns(T.attached_class) }
          def self.new(device_info: nil, ip: nil)
          end

          sig { override.returns({device_info: T.nilable(String), ip: String}) }
          def to_hash
          end
        end

        # Type of authentication request - i.e., the type of transaction or interaction is
        #   causing the merchant to request an authentication. Maps to EMV 3DS field
        #   threeDSRequestorAuthenticationInd.
        class AuthenticationRequestType < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end

        class Browser < Lithic::BaseModel
          # IP address of the browser as returned by the HTTP headers to the 3DS requestor
          #   (e.g., merchant or digital wallet). Maps to EMV 3DS field browserIP.
          sig { returns(T.nilable(String)) }
          def ip
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_)
          end

          # Indicates whether the cardholder's browser has the ability to execute Java. Maps
          #   to EMV 3DS field browserJavaEnabled.
          sig { returns(T.nilable(T::Boolean)) }
          def java_enabled
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def java_enabled=(_)
          end

          # Indicates whether the cardholder's browser has the ability to execute
          #   JavaScript. Maps to EMV 3DS field browserJavascriptEnabled.
          sig { returns(T.nilable(T::Boolean)) }
          def javascript_enabled
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def javascript_enabled=(_)
          end

          # Language of the cardholder's browser as defined in IETF BCP47. Maps to EMV 3DS
          #   field browserLanguage.
          sig { returns(T.nilable(String)) }
          def language
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def language=(_)
          end

          # Time zone of the cardholder's browser offset in minutes between UTC and the
          #   cardholder browser's local time. The offset is positive if the local time is
          #   behind UTC and negative if it is ahead. Maps to EMV 3DS field browserTz.
          sig { returns(T.nilable(String)) }
          def time_zone
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def time_zone=(_)
          end

          # Content of the HTTP user-agent header. Maps to EMV 3DS field browserUserAgent.
          sig { returns(T.nilable(String)) }
          def user_agent
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_)
          end

          # Object containing data about the browser used in the e-commerce transaction.
          #   Present if the channel is 'BROWSER'.
          sig do
            params(
              ip: T.nilable(String),
              java_enabled: T.nilable(T::Boolean),
              javascript_enabled: T.nilable(T::Boolean),
              language: T.nilable(String),
              time_zone: T.nilable(String),
              user_agent: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(ip: nil, java_enabled: nil, javascript_enabled: nil, language: nil, time_zone: nil, user_agent: nil)
          end

          sig do
            override
              .returns(
                {
                  ip: T.nilable(String),
                  java_enabled: T.nilable(T::Boolean),
                  javascript_enabled: T.nilable(T::Boolean),
                  language: T.nilable(String),
                  time_zone: T.nilable(String),
                  user_agent: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class ChallengeMetadata < Lithic::BaseModel
          # The type of challenge method used for authentication.
          sig { returns(Symbol) }
          def method_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def method_type=(_)
          end

          # The phone number used for delivering the OTP. Relevant only for SMS_OTP method.
          sig { returns(T.nilable(String)) }
          def phone_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def phone_number=(_)
          end

          # Metadata about the challenge method and delivery.
          sig { params(method_type: Symbol, phone_number: T.nilable(String)).returns(T.attached_class) }
          def self.new(method_type:, phone_number: nil)
          end

          sig { override.returns({method_type: Symbol, phone_number: T.nilable(String)}) }
          def to_hash
          end

          # The type of challenge method used for authentication.
          class MethodType < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            SMS_OTP = :SMS_OTP
            OUT_OF_BAND = :OUT_OF_BAND
          end
        end

        # Entity that orchestrates the challenge.
        class ChallengeOrchestratedBy < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          LITHIC = :LITHIC
          CUSTOMER = :CUSTOMER
          NO_CHALLENGE = :NO_CHALLENGE
        end

        # Entity that made the authentication decision.
        class DecisionMadeBy < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CUSTOMER_ENDPOINT = :CUSTOMER_ENDPOINT
          LITHIC_DEFAULT = :LITHIC_DEFAULT
          LITHIC_RULES = :LITHIC_RULES
          NETWORK = :NETWORK
          UNKNOWN = :UNKNOWN
        end

        # Type of 3DS Requestor Initiated (3RI) request i.e., a 3DS authentication that
        #   takes place at the initiation of the merchant rather than the cardholder. The
        #   most common example of this is where a merchant is authenticating before billing
        #   for a recurring transaction such as a pay TV subscription or a utility bill.
        #   Maps to EMV 3DS field threeRIInd.
        class ThreeRiRequestType < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end

        class Transaction < Lithic::BaseModel
          # Amount of the purchase in minor units of currency with all punctuation removed.
          #   Maps to EMV 3DS field purchaseAmount.
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          # Currency of the purchase. Maps to EMV 3DS field purchaseCurrency.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # Minor units of currency, as specified in ISO 4217 currency exponent. Maps to EMV
          #   3DS field purchaseExponent.
          sig { returns(Float) }
          def currency_exponent
          end

          sig { params(_: Float).returns(Float) }
          def currency_exponent=(_)
          end

          # Date and time when the authentication was generated by the merchant/acquirer's
          #   3DS server. Maps to EMV 3DS field purchaseDate.
          sig { returns(Time) }
          def date_time
          end

          sig { params(_: Time).returns(Time) }
          def date_time=(_)
          end

          # Type of the transaction for which a 3DS authentication request is occurring.
          #   Maps to EMV 3DS field transType.
          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          # Object containing data about the e-commerce transaction for which the merchant
          #   is requesting authentication.
          sig do
            params(
              amount: Float,
              currency: String,
              currency_exponent: Float,
              date_time: Time,
              type: T.nilable(Symbol)
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, currency_exponent:, date_time:, type:)
          end

          sig do
            override
              .returns(
                {
                  amount: Float,
                  currency: String,
                  currency_exponent: Float,
                  date_time: Time,
                  type: T.nilable(Symbol)
                }
              )
          end
          def to_hash
          end

          # Type of the transaction for which a 3DS authentication request is occurring.
          #   Maps to EMV 3DS field transType.
          class Type < Lithic::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            ACCOUNT_FUNDING = :ACCOUNT_FUNDING
            CHECK_ACCEPTANCE = :CHECK_ACCEPTANCE
            GOODS_SERVICE_PURCHASE = :GOODS_SERVICE_PURCHASE
            PREPAID_ACTIVATION_AND_LOAD = :PREPAID_ACTIVATION_AND_LOAD
            QUASI_CASH_TRANSACTION = :QUASI_CASH_TRANSACTION
          end
        end
      end
    end
  end
end
