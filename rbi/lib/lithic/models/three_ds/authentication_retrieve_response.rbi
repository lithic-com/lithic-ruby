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
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol)) }
        def account_type
        end

        sig do
          params(_: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol))
            .returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol))
        end
        def account_type=(_)
        end

        # Indicates the outcome of the 3DS authentication process.
        sig { returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol) }
        def authentication_result
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol)
        end
        def authentication_result=(_)
        end

        # Indicates whether the expiration date provided by the cardholder during checkout
        #   matches Lithic's record of the card's expiration date.
        sig { returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol) }
        def card_expiry_check
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol)
        end
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
          params(
            _: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder, Lithic::Util::AnyHash)
          )
            .returns(T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder, Lithic::Util::AnyHash))
        end
        def cardholder=(_)
        end

        # Channel in which the authentication occurs. Maps to EMV 3DS field deviceChannel.
        sig { returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol) }
        def channel
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol)
        end
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
          params(_: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant, Lithic::Util::AnyHash))
        end
        def merchant=(_)
        end

        # Either PAYMENT_AUTHENTICATION or NON_PAYMENT_AUTHENTICATION. For
        #   NON_PAYMENT_AUTHENTICATION, additional_data and transaction fields are not
        #   populated.
        sig { returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol) }
        def message_category
        end

        sig do
          params(_: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol)
            .returns(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol)
        end
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
        sig do
          returns(
            Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
          )
        end
        def three_ds_requestor_challenge_indicator
        end

        sig do
          params(
            _: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
          )
            .returns(
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )
        end
        def three_ds_requestor_challenge_indicator=(_)
        end

        # Object containing additional data about the 3DS request that is beyond the EMV
        #   3DS standard spec (e.g., specific fields that only certain card networks send
        #   but are not required across all 3DS requests).
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData)) }
        def additional_data
        end

        sig do
          params(
            _: T.nilable(
              T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData, Lithic::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData, Lithic::Util::AnyHash)
              )
            )
        end
        def additional_data=(_)
        end

        # Object containing data about the app used in the e-commerce transaction. Present
        #   if the channel is 'APP_BASED'.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App)) }
        def app
        end

        sig do
          params(_: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App, Lithic::Util::AnyHash))
        end
        def app=(_)
        end

        # Type of authentication request - i.e., the type of transaction or interaction is
        #   causing the merchant to request an authentication. Maps to EMV 3DS field
        #   threeDSRequestorAuthenticationInd.
        sig do
          returns(
            T.nilable(
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          )
        end
        def authentication_request_type
        end

        sig do
          params(
            _: T.nilable(
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          )
            .returns(
              T.nilable(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
              )
            )
        end
        def authentication_request_type=(_)
        end

        # Object containing data about the browser used in the e-commerce transaction.
        #   Present if the channel is 'BROWSER'.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser)) }
        def browser
        end

        sig do
          params(_: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser, Lithic::Util::AnyHash))
            .returns(T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser, Lithic::Util::AnyHash))
        end
        def browser=(_)
        end

        # Metadata about the challenge method and delivery.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata)) }
        def challenge_metadata
        end

        sig do
          params(
            _: T.nilable(
              T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata, Lithic::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata, Lithic::Util::AnyHash)
              )
            )
        end
        def challenge_metadata=(_)
        end

        # Entity that orchestrates the challenge.
        sig do
          returns(
            T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol)
          )
        end
        def challenge_orchestrated_by
        end

        sig do
          params(
            _: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol)
          )
            .returns(
              T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol)
            )
        end
        def challenge_orchestrated_by=(_)
        end

        # Entity that made the authentication decision.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol)) }
        def decision_made_by
        end

        sig do
          params(
            _: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol)
          )
            .returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol))
        end
        def decision_made_by=(_)
        end

        # Type of 3DS Requestor Initiated (3RI) request i.e., a 3DS authentication that
        #   takes place at the initiation of the merchant rather than the cardholder. The
        #   most common example of this is where a merchant is authenticating before billing
        #   for a recurring transaction such as a pay TV subscription or a utility bill.
        #   Maps to EMV 3DS field threeRIInd.
        sig do
          returns(
            T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol)
          )
        end
        def three_ri_request_type
        end

        sig do
          params(
            _: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol)
          )
            .returns(
              T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol)
            )
        end
        def three_ri_request_type=(_)
        end

        # Object containing data about the e-commerce transaction for which the merchant
        #   is requesting authentication.
        sig { returns(T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction)) }
        def transaction
        end

        sig do
          params(
            _: T.nilable(
              T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction, Lithic::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction, Lithic::Util::AnyHash)
              )
            )
        end
        def transaction=(_)
        end

        sig do
          params(
            token: String,
            account_type: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol),
            authentication_result: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol,
            card_expiry_check: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol,
            card_token: String,
            cardholder: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder, Lithic::Util::AnyHash),
            channel: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol,
            created: Time,
            merchant: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant, Lithic::Util::AnyHash),
            message_category: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol,
            three_ds_requestor_challenge_indicator: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol,
            additional_data: T.nilable(
              T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData, Lithic::Util::AnyHash)
            ),
            app: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App, Lithic::Util::AnyHash),
            authentication_request_type: T.nilable(
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            ),
            browser: T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser, Lithic::Util::AnyHash),
            challenge_metadata: T.nilable(
              T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata, Lithic::Util::AnyHash)
            ),
            challenge_orchestrated_by: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol),
            decision_made_by: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol),
            three_ri_request_type: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol),
            transaction: T.nilable(
              T.any(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction, Lithic::Util::AnyHash)
            )
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
                account_type: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol),
                authentication_result: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol,
                card_expiry_check: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol,
                card_token: String,
                cardholder: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder,
                channel: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol,
                created: Time,
                merchant: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant,
                message_category: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol,
                three_ds_requestor_challenge_indicator: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol,
                additional_data: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData),
                app: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::App,
                authentication_request_type: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
                ),
                browser: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Browser,
                challenge_metadata: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata),
                challenge_orchestrated_by: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol),
                decision_made_by: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol),
                three_ri_request_type: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol),
                transaction: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction)
              }
            )
        end
        def to_hash
        end

        # Type of account/card that is being used for the transaction. Maps to EMV 3DS
        #   field `acctType`.
        module AccountType
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol) }

          CREDIT =
            T.let(:CREDIT, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol)
          DEBIT = T.let(:DEBIT, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol)
          NOT_APPLICABLE =
            T.let(:NOT_APPLICABLE, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AccountType::TaggedSymbol])
            end
            def values
            end
          end
        end

        # Indicates the outcome of the 3DS authentication process.
        module AuthenticationResult
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol) }

          DECLINE =
            T.let(
              :DECLINE,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol
            )
          PENDING_CHALLENGE =
            T.let(
              :PENDING_CHALLENGE,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol
            )
          PENDING_DECISION =
            T.let(
              :PENDING_DECISION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationResult::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        # Indicates whether the expiration date provided by the cardholder during checkout
        #   matches Lithic's record of the card's expiration date.
        module CardExpiryCheck
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol) }

          MATCH =
            T.let(:MATCH, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol)
          MISMATCH =
            T.let(:MISMATCH, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol)
          NOT_PRESENT =
            T.let(
              :NOT_PRESENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::CardExpiryCheck::TaggedSymbol])
            end
            def values
            end
          end
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
            params(
              _: T.any(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress,
                Lithic::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress,
                  Lithic::Util::AnyHash
                )
              )
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
            params(
              _: T.any(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress,
                Lithic::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress,
                  Lithic::Util::AnyHash
                )
              )
          end
          def shipping_address=(_)
          end

          # Object containing data about the cardholder provided during the transaction.
          sig do
            params(
              address_match: T.nilable(T::Boolean),
              billing_address: T.any(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::BillingAddress,
                Lithic::Util::AnyHash
              ),
              email: T.nilable(String),
              name: T.nilable(String),
              phone_number_home: T.nilable(String),
              phone_number_mobile: T.nilable(String),
              phone_number_work: T.nilable(String),
              shipping_address: T.any(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Cardholder::ShippingAddress,
                Lithic::Util::AnyHash
              )
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
        module Channel
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol) }

          APP_BASED =
            T.let(:APP_BASED, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol)
          BROWSER = T.let(:BROWSER, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol)
          THREE_DS_REQUESTOR_INITIATED =
            T.let(
              :THREE_DS_REQUESTOR_INITIATED,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol
            )

          class << self
            sig { override.returns(T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Channel::TaggedSymbol]) }
            def values
            end
          end
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
            params(
              _: T.any(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator,
                Lithic::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator,
                  Lithic::Util::AnyHash
                )
              )
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
              risk_indicator: T.any(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator,
                Lithic::Util::AnyHash
              )
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
            sig do
              returns(
                T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                )
              )
            end
            def delivery_time_frame
            end

            sig do
              params(
                _: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                  )
                )
            end
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
            sig do
              returns(
                T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                )
              )
            end
            def order_availability
            end

            sig do
              params(
                _: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                  )
                )
            end
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
            sig do
              returns(
                T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                )
              )
            end
            def reorder_items
            end

            sig do
              params(
                _: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                  )
                )
            end
            def reorder_items=(_)
            end

            # Shipping method that the cardholder chose for the transaction. If purchase
            #   includes one or more item, this indicator is used for the physical goods; if the
            #   purchase only includes digital goods, this indicator is used to describe the
            #   most expensive item purchased. Maps to EMV 3DS field shipIndicator.
            sig do
              returns(
                T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              )
            end
            def shipping_method
            end

            sig do
              params(
                _: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                  )
                )
            end
            def shipping_method=(_)
            end

            # Object containing additional data indicating additional risk factors related to
            #   the e-commerce transaction.
            sig do
              params(
                delivery_email_address: T.nilable(String),
                delivery_time_frame: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                ),
                gift_card_amount: T.nilable(Integer),
                gift_card_count: T.nilable(Integer),
                gift_card_currency: T.nilable(String),
                order_availability: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                ),
                pre_order_available_date: T.nilable(Time),
                reorder_items: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                ),
                shipping_method: T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
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
                    delivery_time_frame: T.nilable(
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                    ),
                    gift_card_amount: T.nilable(Integer),
                    gift_card_count: T.nilable(Integer),
                    gift_card_currency: T.nilable(String),
                    order_availability: T.nilable(
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                    ),
                    pre_order_available_date: T.nilable(Time),
                    reorder_items: T.nilable(
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                    ),
                    shipping_method: T.nilable(
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                    )
                  }
                )
            end
            def to_hash
            end

            # The delivery time frame for the merchandise. Maps to EMV 3DS field
            #   deliveryTimeframe.
            module DeliveryTimeFrame
              extend Lithic::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                  )
                end

              ELECTRONIC_DELIVERY =
                T.let(
                  :ELECTRONIC_DELIVERY,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                )
              OVERNIGHT_SHIPPING =
                T.let(
                  :OVERNIGHT_SHIPPING,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                )
              SAME_DAY_SHIPPING =
                T.let(
                  :SAME_DAY_SHIPPING,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                )
              TWO_DAY_OR_MORE_SHIPPING =
                T.let(
                  :TWO_DAY_OR_MORE_SHIPPING,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::DeliveryTimeFrame::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            # Indicates whether the purchase is for merchandise that is available now or at a
            #   future date. Maps to EMV 3DS field preOrderPurchaseInd.
            module OrderAvailability
              extend Lithic::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                  )
                end

              FUTURE_AVAILABILITY =
                T.let(
                  :FUTURE_AVAILABILITY,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                )
              MERCHANDISE_AVAILABLE =
                T.let(
                  :MERCHANDISE_AVAILABLE,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::OrderAvailability::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            # Indicates whether the cardholder is reordering previously purchased merchandise.
            #   Maps to EMV 3DS field reorderItemsInd.
            module ReorderItems
              extend Lithic::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                  )
                end

              FIRST_TIME_ORDERED =
                T.let(
                  :FIRST_TIME_ORDERED,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                )
              REORDERED =
                T.let(
                  :REORDERED,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ReorderItems::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end

            # Shipping method that the cardholder chose for the transaction. If purchase
            #   includes one or more item, this indicator is used for the physical goods; if the
            #   purchase only includes digital goods, this indicator is used to describe the
            #   most expensive item purchased. Maps to EMV 3DS field shipIndicator.
            module ShippingMethod
              extend Lithic::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                  )
                end

              DIGITAL_GOODS =
                T.let(
                  :DIGITAL_GOODS,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              LOCKER_DELIVERY =
                T.let(
                  :LOCKER_DELIVERY,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              OTHER =
                T.let(
                  :OTHER,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              PICK_UP_AND_GO_DELIVERY =
                T.let(
                  :PICK_UP_AND_GO_DELIVERY,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              SHIP_TO_BILLING_ADDRESS =
                T.let(
                  :SHIP_TO_BILLING_ADDRESS,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              SHIP_TO_NON_BILLING_ADDRESS =
                T.let(
                  :SHIP_TO_NON_BILLING_ADDRESS,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              SHIP_TO_OTHER_VERIFIED_ADDRESS =
                T.let(
                  :SHIP_TO_OTHER_VERIFIED_ADDRESS,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              SHIP_TO_STORE =
                T.let(
                  :SHIP_TO_STORE,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )
              TRAVEL_AND_EVENT_TICKETS =
                T.let(
                  :TRAVEL_AND_EVENT_TICKETS,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Merchant::RiskIndicator::ShippingMethod::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end
        end

        # Either PAYMENT_AUTHENTICATION or NON_PAYMENT_AUTHENTICATION. For
        #   NON_PAYMENT_AUTHENTICATION, additional_data and transaction fields are not
        #   populated.
        module MessageCategory
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol) }

          NON_PAYMENT_AUTHENTICATION =
            T.let(
              :NON_PAYMENT_AUTHENTICATION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol
            )
          PAYMENT_AUTHENTICATION =
            T.let(
              :PAYMENT_AUTHENTICATION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::MessageCategory::TaggedSymbol])
            end
            def values
            end
          end
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
        module ThreeDSRequestorChallengeIndicator
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
              )
            end

          NO_PREFERENCE =
            T.let(
              :NO_PREFERENCE,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )
          NO_CHALLENGE_REQUESTED =
            T.let(
              :NO_CHALLENGE_REQUESTED,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )
          CHALLENGE_PREFERENCE =
            T.let(
              :CHALLENGE_PREFERENCE,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )
          CHALLENGE_MANDATE =
            T.let(
              :CHALLENGE_MANDATE,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )
          NO_CHALLENGE_RISK_ALREADY_ASSESSED =
            T.let(
              :NO_CHALLENGE_RISK_ALREADY_ASSESSED,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )
          DATA_SHARE_ONLY =
            T.let(
              :DATA_SHARE_ONLY,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeDSRequestorChallengeIndicator::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        class AdditionalData < Lithic::BaseModel
          # Mastercard only: Indicates whether the network would have considered the
          #   authentication request to be low risk or not.
          sig do
            returns(
              T.nilable(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
              )
            )
          end
          def network_decision
          end

          sig do
            params(
              _: T.nilable(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
              )
            )
              .returns(
                T.nilable(
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
                )
              )
          end
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
            params(
              network_decision: T.nilable(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
              ),
              network_risk_score: T.nilable(Integer)
            )
              .returns(T.attached_class)
          end
          def self.new(network_decision: nil, network_risk_score: nil)
          end

          sig do
            override
              .returns(
                {
                  network_decision: T.nilable(
                    Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
                  ),
                  network_risk_score: T.nilable(Integer)
                }
              )
          end
          def to_hash
          end

          # Mastercard only: Indicates whether the network would have considered the
          #   authentication request to be low risk or not.
          module NetworkDecision
            extend Lithic::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
                )
              end

            LOW_RISK =
              T.let(
                :LOW_RISK,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
              )
            NOT_LOW_RISK =
              T.let(
                :NOT_LOW_RISK,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AdditionalData::NetworkDecision::TaggedSymbol]
                  )
              end
              def values
              end
            end
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
        module AuthenticationRequestType
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
              )
            end

          ADD_CARD =
            T.let(
              :ADD_CARD,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          BILLING_AGREEMENT =
            T.let(
              :BILLING_AGREEMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          DELAYED_SHIPMENT =
            T.let(
              :DELAYED_SHIPMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          EMV_TOKEN_CARDHOLDER_VERIFICATION =
            T.let(
              :EMV_TOKEN_CARDHOLDER_VERIFICATION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          INSTALLMENT_TRANSACTION =
            T.let(
              :INSTALLMENT_TRANSACTION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          MAINTAIN_CARD =
            T.let(
              :MAINTAIN_CARD,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          PAYMENT_TRANSACTION =
            T.let(
              :PAYMENT_TRANSACTION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          RECURRING_TRANSACTION =
            T.let(
              :RECURRING_TRANSACTION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          SPLIT_PAYMENT =
            T.let(
              :SPLIT_PAYMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )
          SPLIT_SHIPMENT =
            T.let(
              :SPLIT_SHIPMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::AuthenticationRequestType::TaggedSymbol]
                )
            end
            def values
            end
          end
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
          sig do
            returns(
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol
            )
          end
          def method_type
          end

          sig do
            params(
              _: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol
            )
              .returns(
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol
              )
          end
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
          sig do
            params(
              method_type: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol,
              phone_number: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(method_type:, phone_number: nil)
          end

          sig do
            override
              .returns(
                {
                  method_type: Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol,
                  phone_number: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The type of challenge method used for authentication.
          module MethodType
            extend Lithic::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol
                )
              end

            SMS_OTP =
              T.let(
                :SMS_OTP,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol
              )
            OUT_OF_BAND =
              T.let(
                :OUT_OF_BAND,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeMetadata::MethodType::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        # Entity that orchestrates the challenge.
        module ChallengeOrchestratedBy
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol
              )
            end

          LITHIC =
            T.let(
              :LITHIC,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :CUSTOMER,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol
            )
          NO_CHALLENGE =
            T.let(
              :NO_CHALLENGE,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ChallengeOrchestratedBy::TaggedSymbol]
                )
            end
            def values
            end
          end
        end

        # Entity that made the authentication decision.
        module DecisionMadeBy
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol) }

          CUSTOMER_ENDPOINT =
            T.let(
              :CUSTOMER_ENDPOINT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol
            )
          LITHIC_DEFAULT =
            T.let(
              :LITHIC_DEFAULT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol
            )
          LITHIC_RULES =
            T.let(
              :LITHIC_RULES,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol
            )
          NETWORK =
            T.let(:NETWORK, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol)
          UNKNOWN =
            T.let(:UNKNOWN, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::DecisionMadeBy::TaggedSymbol])
            end
            def values
            end
          end
        end

        # Type of 3DS Requestor Initiated (3RI) request i.e., a 3DS authentication that
        #   takes place at the initiation of the merchant rather than the cardholder. The
        #   most common example of this is where a merchant is authenticating before billing
        #   for a recurring transaction such as a pay TV subscription or a utility bill.
        #   Maps to EMV 3DS field threeRIInd.
        module ThreeRiRequestType
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol) }

          ACCOUNT_VERIFICATION =
            T.let(
              :ACCOUNT_VERIFICATION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          ADD_CARD =
            T.let(
              :ADD_CARD,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          BILLING_AGREEMENT =
            T.let(
              :BILLING_AGREEMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          CARD_SECURITY_CODE_STATUS_CHECK =
            T.let(
              :CARD_SECURITY_CODE_STATUS_CHECK,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          DELAYED_SHIPMENT =
            T.let(
              :DELAYED_SHIPMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          DEVICE_BINDING_STATUS_CHECK =
            T.let(
              :DEVICE_BINDING_STATUS_CHECK,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          INSTALLMENT_TRANSACTION =
            T.let(
              :INSTALLMENT_TRANSACTION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          MAIL_ORDER =
            T.let(
              :MAIL_ORDER,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          MAINTAIN_CARD_INFO =
            T.let(
              :MAINTAIN_CARD_INFO,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          OTHER_PAYMENT =
            T.let(
              :OTHER_PAYMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          RECURRING_TRANSACTION =
            T.let(
              :RECURRING_TRANSACTION,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          SPLIT_PAYMENT =
            T.let(
              :SPLIT_PAYMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          SPLIT_SHIPMENT =
            T.let(
              :SPLIT_SHIPMENT,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          TELEPHONE_ORDER =
            T.let(
              :TELEPHONE_ORDER,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )
          TOP_UP =
            T.let(:TOP_UP, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol)
          TRUST_LIST_STATUS_CHECK =
            T.let(
              :TRUST_LIST_STATUS_CHECK,
              Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::ThreeRiRequestType::TaggedSymbol]
                )
            end
            def values
            end
          end
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
          sig do
            returns(
              T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol)
            )
          end
          def type
          end

          sig do
            params(
              _: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol)
            )
              .returns(
                T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol)
              )
          end
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
              type: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol)
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
                  type: T.nilable(Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol)
                }
              )
          end
          def to_hash
          end

          # Type of the transaction for which a 3DS authentication request is occurring.
          #   Maps to EMV 3DS field transType.
          module Type
            extend Lithic::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol) }

            ACCOUNT_FUNDING =
              T.let(
                :ACCOUNT_FUNDING,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol
              )
            CHECK_ACCEPTANCE =
              T.let(
                :CHECK_ACCEPTANCE,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol
              )
            GOODS_SERVICE_PURCHASE =
              T.let(
                :GOODS_SERVICE_PURCHASE,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol
              )
            PREPAID_ACTIVATION_AND_LOAD =
              T.let(
                :PREPAID_ACTIVATION_AND_LOAD,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol
              )
            QUASI_CASH_TRANSACTION =
              T.let(
                :QUASI_CASH_TRANSACTION,
                Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[Lithic::Models::ThreeDS::AuthenticationRetrieveResponse::Transaction::Type::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end
      end
    end
  end
end
