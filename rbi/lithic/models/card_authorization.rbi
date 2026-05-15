# typed: strong

module Lithic
  module Models
    class CardAuthorization < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardAuthorization, Lithic::Internal::AnyHash)
        end

      # The provisional transaction group uuid associated with the authorization
      sig { returns(String) }
      attr_accessor :token

      # Fee (in cents) assessed by the merchant and paid for by the cardholder. Will be
      # zero if no fee is assessed. Rebates may be transmitted as a negative value to
      # indicate credited fees.
      sig { returns(Integer) }
      attr_accessor :acquirer_fee

      # Deprecated, use `amounts`. Authorization amount of the transaction (in cents),
      # including any acquirer fees. The contents of this field are identical to
      # `authorization_amount`.
      sig { returns(Integer) }
      attr_accessor :amount

      # Structured amounts for this authorization. The `cardholder` and `merchant`
      # amounts reflect the original network authorization values. For programs with
      # hold adjustments enabled (e.g., automated fuel dispensers or tipping MCCs), the
      # `hold` amount may exceed the `cardholder` and `merchant` amounts to account for
      # anticipated final transaction amounts such as tips or fuel fill-ups
      sig { returns(Lithic::CardAuthorization::Amounts) }
      attr_reader :amounts

      sig { params(amounts: Lithic::CardAuthorization::Amounts::OrHash).void }
      attr_writer :amounts

      # Deprecated, use `amounts`. The base transaction amount (in cents) plus the
      # acquirer fee field. This is the amount the issuer should authorize against
      # unless the issuer is paying the acquirer fee on behalf of the cardholder.
      sig { returns(Integer) }
      attr_accessor :authorization_amount

      sig { returns(Lithic::CardAuthorization::Avs) }
      attr_reader :avs

      sig { params(avs: Lithic::CardAuthorization::Avs::OrHash).void }
      attr_writer :avs

      # Card object in ASA
      sig { returns(Lithic::CardAuthorization::Card) }
      attr_reader :card

      sig { params(card: Lithic::CardAuthorization::Card::OrHash).void }
      attr_writer :card

      # Deprecated, use `amounts`. 3-character alphabetic ISO 4217 code for cardholder's
      # billing currency.
      sig { returns(String) }
      attr_accessor :cardholder_currency

      # The portion of the transaction requested as cash back by the cardholder, and
      # does not include any acquirer fees. The amount field includes the purchase
      # amount, the requested cash back amount, and any acquirer fees.
      #
      # If no cash back was requested, the value of this field will be 0, and the field
      # will always be present.
      sig { returns(Integer) }
      attr_accessor :cash_amount

      # Date and time when the transaction first occurred in UTC.
      sig { returns(Time) }
      attr_accessor :created

      # Merchant information including full location details.
      sig { returns(Lithic::CardAuthorization::Merchant) }
      attr_reader :merchant

      sig { params(merchant: Lithic::CardAuthorization::Merchant::OrHash).void }
      attr_writer :merchant

      # Deprecated, use `amounts`. The amount that the merchant will receive,
      # denominated in `merchant_currency` and in the smallest currency unit. Note the
      # amount includes `acquirer_fee`, similar to `authorization_amount`. It will be
      # different from `authorization_amount` if the merchant is taking payment in a
      # different currency.
      sig { returns(Integer) }
      attr_accessor :merchant_amount

      # 3-character alphabetic ISO 4217 code for the local currency of the transaction.
      sig { returns(String) }
      attr_accessor :merchant_currency

      # Where the cardholder received the service, when different from the card acceptor
      # location. This is populated from network data elements such as Mastercard DE-122
      # SE1 SF9-14 and Visa F34 DS02.
      sig { returns(T.nilable(Lithic::CardAuthorization::ServiceLocation)) }
      attr_reader :service_location

      sig do
        params(
          service_location:
            T.nilable(Lithic::CardAuthorization::ServiceLocation::OrHash)
        ).void
      end
      attr_writer :service_location

      # Deprecated, use `amounts`. Amount (in cents) of the transaction that has been
      # settled, including any acquirer fees.
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # The type of authorization request that this request is for. Note that
      # `CREDIT_AUTHORIZATION` and `FINANCIAL_CREDIT_AUTHORIZATION` is only available to
      # users with credit decisioning via ASA enabled.
      sig { returns(Lithic::CardAuthorization::Status::TaggedSymbol) }
      attr_accessor :status

      # The entity that initiated the transaction.
      sig do
        returns(Lithic::CardAuthorization::TransactionInitiator::TaggedSymbol)
      end
      attr_accessor :transaction_initiator

      sig do
        returns(T.nilable(Lithic::CardAuthorization::AccountType::TaggedSymbol))
      end
      attr_reader :account_type

      sig do
        params(
          account_type: Lithic::CardAuthorization::AccountType::OrSymbol
        ).void
      end
      attr_writer :account_type

      sig { returns(T.nilable(Lithic::CardholderAuthentication)) }
      attr_reader :cardholder_authentication

      sig do
        params(
          cardholder_authentication: Lithic::CardholderAuthentication::OrHash
        ).void
      end
      attr_writer :cardholder_authentication

      # Deprecated, use `cash_amount`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :cashback

      sig { params(cashback: Integer).void }
      attr_writer :cashback

      # Deprecated, use `amounts`. If the transaction was requested in a currency other
      # than the settlement currency, this field will be populated to indicate the rate
      # used to translate the merchant_amount to the amount (i.e., `merchant_amount` x
      # `conversion_rate` = `amount`). Note that the `merchant_amount` is in the local
      # currency and the amount is in the settlement currency.
      sig { returns(T.nilable(Float)) }
      attr_reader :conversion_rate

      sig { params(conversion_rate: Float).void }
      attr_writer :conversion_rate

      # The event token associated with the authorization. This field is only set for
      # programs enrolled into the beta.
      sig { returns(T.nilable(String)) }
      attr_reader :event_token

      sig { params(event_token: String).void }
      attr_writer :event_token

      # Optional Object containing information if the Card is a part of a Fleet managed
      # program
      sig { returns(T.nilable(Lithic::CardAuthorization::FleetInfo)) }
      attr_reader :fleet_info

      sig do
        params(
          fleet_info: T.nilable(Lithic::CardAuthorization::FleetInfo::OrHash)
        ).void
      end
      attr_writer :fleet_info

      # The latest Authorization Challenge that was issued to the cardholder for this
      # merchant.
      sig { returns(T.nilable(Lithic::CardAuthorization::LatestChallenge)) }
      attr_reader :latest_challenge

      sig do
        params(
          latest_challenge: Lithic::CardAuthorization::LatestChallenge::OrHash
        ).void
      end
      attr_writer :latest_challenge

      # Card network of the authorization.
      sig do
        returns(T.nilable(Lithic::CardAuthorization::Network::TaggedSymbol))
      end
      attr_reader :network

      sig { params(network: Lithic::CardAuthorization::Network::OrSymbol).void }
      attr_writer :network

      # Network-provided score assessing risk level associated with a given
      # authorization. Scores are on a range of 0-999, with 0 representing the lowest
      # risk and 999 representing the highest risk. For Visa transactions, where the raw
      # score has a range of 0-99, Lithic will normalize the score by multiplying the
      # raw score by 10x.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :network_risk_score

      # Contains raw data provided by the card network, including attributes that
      # provide further context about the authorization. If populated by the network,
      # data is organized by Lithic and passed through without further modification.
      # Please consult the official network documentation for more details about these
      # values and how to use them. This object is only available to certain programs-
      # contact your Customer Success Manager to discuss enabling access.
      sig { returns(T.nilable(Lithic::CardAuthorization::NetworkSpecificData)) }
      attr_reader :network_specific_data

      sig do
        params(
          network_specific_data:
            T.nilable(Lithic::CardAuthorization::NetworkSpecificData::OrHash)
        ).void
      end
      attr_writer :network_specific_data

      sig { returns(T.nilable(Lithic::CardAuthorization::Pos)) }
      attr_reader :pos

      sig { params(pos: Lithic::CardAuthorization::Pos::OrHash).void }
      attr_writer :pos

      sig { returns(T.nilable(Lithic::TokenInfo)) }
      attr_reader :token_info

      sig { params(token_info: T.nilable(Lithic::TokenInfo::OrHash)).void }
      attr_writer :token_info

      # Deprecated: approximate time-to-live for the authorization.
      sig { returns(T.nilable(Time)) }
      attr_reader :ttl

      sig { params(ttl: Time).void }
      attr_writer :ttl

      # Card Authorization
      sig do
        params(
          token: String,
          acquirer_fee: Integer,
          amount: Integer,
          amounts: Lithic::CardAuthorization::Amounts::OrHash,
          authorization_amount: Integer,
          avs: Lithic::CardAuthorization::Avs::OrHash,
          card: Lithic::CardAuthorization::Card::OrHash,
          cardholder_currency: String,
          cash_amount: Integer,
          created: Time,
          merchant: Lithic::CardAuthorization::Merchant::OrHash,
          merchant_amount: Integer,
          merchant_currency: String,
          service_location:
            T.nilable(Lithic::CardAuthorization::ServiceLocation::OrHash),
          settled_amount: Integer,
          status: Lithic::CardAuthorization::Status::OrSymbol,
          transaction_initiator:
            Lithic::CardAuthorization::TransactionInitiator::OrSymbol,
          account_type: Lithic::CardAuthorization::AccountType::OrSymbol,
          cardholder_authentication: Lithic::CardholderAuthentication::OrHash,
          cashback: Integer,
          conversion_rate: Float,
          event_token: String,
          fleet_info: T.nilable(Lithic::CardAuthorization::FleetInfo::OrHash),
          latest_challenge: Lithic::CardAuthorization::LatestChallenge::OrHash,
          network: Lithic::CardAuthorization::Network::OrSymbol,
          network_risk_score: T.nilable(Integer),
          network_specific_data:
            T.nilable(Lithic::CardAuthorization::NetworkSpecificData::OrHash),
          pos: Lithic::CardAuthorization::Pos::OrHash,
          token_info: T.nilable(Lithic::TokenInfo::OrHash),
          ttl: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The provisional transaction group uuid associated with the authorization
        token:,
        # Fee (in cents) assessed by the merchant and paid for by the cardholder. Will be
        # zero if no fee is assessed. Rebates may be transmitted as a negative value to
        # indicate credited fees.
        acquirer_fee:,
        # Deprecated, use `amounts`. Authorization amount of the transaction (in cents),
        # including any acquirer fees. The contents of this field are identical to
        # `authorization_amount`.
        amount:,
        # Structured amounts for this authorization. The `cardholder` and `merchant`
        # amounts reflect the original network authorization values. For programs with
        # hold adjustments enabled (e.g., automated fuel dispensers or tipping MCCs), the
        # `hold` amount may exceed the `cardholder` and `merchant` amounts to account for
        # anticipated final transaction amounts such as tips or fuel fill-ups
        amounts:,
        # Deprecated, use `amounts`. The base transaction amount (in cents) plus the
        # acquirer fee field. This is the amount the issuer should authorize against
        # unless the issuer is paying the acquirer fee on behalf of the cardholder.
        authorization_amount:,
        avs:,
        # Card object in ASA
        card:,
        # Deprecated, use `amounts`. 3-character alphabetic ISO 4217 code for cardholder's
        # billing currency.
        cardholder_currency:,
        # The portion of the transaction requested as cash back by the cardholder, and
        # does not include any acquirer fees. The amount field includes the purchase
        # amount, the requested cash back amount, and any acquirer fees.
        #
        # If no cash back was requested, the value of this field will be 0, and the field
        # will always be present.
        cash_amount:,
        # Date and time when the transaction first occurred in UTC.
        created:,
        # Merchant information including full location details.
        merchant:,
        # Deprecated, use `amounts`. The amount that the merchant will receive,
        # denominated in `merchant_currency` and in the smallest currency unit. Note the
        # amount includes `acquirer_fee`, similar to `authorization_amount`. It will be
        # different from `authorization_amount` if the merchant is taking payment in a
        # different currency.
        merchant_amount:,
        # 3-character alphabetic ISO 4217 code for the local currency of the transaction.
        merchant_currency:,
        # Where the cardholder received the service, when different from the card acceptor
        # location. This is populated from network data elements such as Mastercard DE-122
        # SE1 SF9-14 and Visa F34 DS02.
        service_location:,
        # Deprecated, use `amounts`. Amount (in cents) of the transaction that has been
        # settled, including any acquirer fees.
        settled_amount:,
        # The type of authorization request that this request is for. Note that
        # `CREDIT_AUTHORIZATION` and `FINANCIAL_CREDIT_AUTHORIZATION` is only available to
        # users with credit decisioning via ASA enabled.
        status:,
        # The entity that initiated the transaction.
        transaction_initiator:,
        account_type: nil,
        cardholder_authentication: nil,
        # Deprecated, use `cash_amount`.
        cashback: nil,
        # Deprecated, use `amounts`. If the transaction was requested in a currency other
        # than the settlement currency, this field will be populated to indicate the rate
        # used to translate the merchant_amount to the amount (i.e., `merchant_amount` x
        # `conversion_rate` = `amount`). Note that the `merchant_amount` is in the local
        # currency and the amount is in the settlement currency.
        conversion_rate: nil,
        # The event token associated with the authorization. This field is only set for
        # programs enrolled into the beta.
        event_token: nil,
        # Optional Object containing information if the Card is a part of a Fleet managed
        # program
        fleet_info: nil,
        # The latest Authorization Challenge that was issued to the cardholder for this
        # merchant.
        latest_challenge: nil,
        # Card network of the authorization.
        network: nil,
        # Network-provided score assessing risk level associated with a given
        # authorization. Scores are on a range of 0-999, with 0 representing the lowest
        # risk and 999 representing the highest risk. For Visa transactions, where the raw
        # score has a range of 0-99, Lithic will normalize the score by multiplying the
        # raw score by 10x.
        network_risk_score: nil,
        # Contains raw data provided by the card network, including attributes that
        # provide further context about the authorization. If populated by the network,
        # data is organized by Lithic and passed through without further modification.
        # Please consult the official network documentation for more details about these
        # values and how to use them. This object is only available to certain programs-
        # contact your Customer Success Manager to discuss enabling access.
        network_specific_data: nil,
        pos: nil,
        token_info: nil,
        # Deprecated: approximate time-to-live for the authorization.
        ttl: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            acquirer_fee: Integer,
            amount: Integer,
            amounts: Lithic::CardAuthorization::Amounts,
            authorization_amount: Integer,
            avs: Lithic::CardAuthorization::Avs,
            card: Lithic::CardAuthorization::Card,
            cardholder_currency: String,
            cash_amount: Integer,
            created: Time,
            merchant: Lithic::CardAuthorization::Merchant,
            merchant_amount: Integer,
            merchant_currency: String,
            service_location:
              T.nilable(Lithic::CardAuthorization::ServiceLocation),
            settled_amount: Integer,
            status: Lithic::CardAuthorization::Status::TaggedSymbol,
            transaction_initiator:
              Lithic::CardAuthorization::TransactionInitiator::TaggedSymbol,
            account_type: Lithic::CardAuthorization::AccountType::TaggedSymbol,
            cardholder_authentication: Lithic::CardholderAuthentication,
            cashback: Integer,
            conversion_rate: Float,
            event_token: String,
            fleet_info: T.nilable(Lithic::CardAuthorization::FleetInfo),
            latest_challenge: Lithic::CardAuthorization::LatestChallenge,
            network: Lithic::CardAuthorization::Network::TaggedSymbol,
            network_risk_score: T.nilable(Integer),
            network_specific_data:
              T.nilable(Lithic::CardAuthorization::NetworkSpecificData),
            pos: Lithic::CardAuthorization::Pos,
            token_info: T.nilable(Lithic::TokenInfo),
            ttl: Time
          }
        )
      end
      def to_hash
      end

      class Amounts < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::CardAuthorization::Amounts, Lithic::Internal::AnyHash)
          end

        sig { returns(Lithic::CardAuthorization::Amounts::Cardholder) }
        attr_reader :cardholder

        sig do
          params(
            cardholder: Lithic::CardAuthorization::Amounts::Cardholder::OrHash
          ).void
        end
        attr_writer :cardholder

        sig { returns(T.nilable(Lithic::CardAuthorization::Amounts::Hold)) }
        attr_reader :hold

        sig do
          params(
            hold: T.nilable(Lithic::CardAuthorization::Amounts::Hold::OrHash)
          ).void
        end
        attr_writer :hold

        sig { returns(Lithic::CardAuthorization::Amounts::Merchant) }
        attr_reader :merchant

        sig do
          params(
            merchant: Lithic::CardAuthorization::Amounts::Merchant::OrHash
          ).void
        end
        attr_writer :merchant

        sig do
          returns(T.nilable(Lithic::CardAuthorization::Amounts::Settlement))
        end
        attr_reader :settlement

        sig do
          params(
            settlement:
              T.nilable(Lithic::CardAuthorization::Amounts::Settlement::OrHash)
          ).void
        end
        attr_writer :settlement

        # Structured amounts for this authorization. The `cardholder` and `merchant`
        # amounts reflect the original network authorization values. For programs with
        # hold adjustments enabled (e.g., automated fuel dispensers or tipping MCCs), the
        # `hold` amount may exceed the `cardholder` and `merchant` amounts to account for
        # anticipated final transaction amounts such as tips or fuel fill-ups
        sig do
          params(
            cardholder: Lithic::CardAuthorization::Amounts::Cardholder::OrHash,
            hold: T.nilable(Lithic::CardAuthorization::Amounts::Hold::OrHash),
            merchant: Lithic::CardAuthorization::Amounts::Merchant::OrHash,
            settlement:
              T.nilable(Lithic::CardAuthorization::Amounts::Settlement::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(cardholder:, hold:, merchant:, settlement:)
        end

        sig do
          override.returns(
            {
              cardholder: Lithic::CardAuthorization::Amounts::Cardholder,
              hold: T.nilable(Lithic::CardAuthorization::Amounts::Hold),
              merchant: Lithic::CardAuthorization::Amounts::Merchant,
              settlement:
                T.nilable(Lithic::CardAuthorization::Amounts::Settlement)
            }
          )
        end
        def to_hash
        end

        class Cardholder < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::Amounts::Cardholder,
                Lithic::Internal::AnyHash
              )
            end

          # Amount in the smallest unit of the applicable currency (e.g., cents)
          sig { returns(Integer) }
          attr_accessor :amount

          # Exchange rate used for currency conversion
          sig { returns(String) }
          attr_accessor :conversion_rate

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(
              amount: Integer,
              conversion_rate: String,
              currency: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Amount in the smallest unit of the applicable currency (e.g., cents)
            amount:,
            # Exchange rate used for currency conversion
            conversion_rate:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig do
            override.returns(
              { amount: Integer, conversion_rate: String, currency: String }
            )
          end
          def to_hash
          end
        end

        class Hold < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::Amounts::Hold,
                Lithic::Internal::AnyHash
              )
            end

          # Amount in the smallest unit of the applicable currency (e.g., cents)
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: Integer, currency: String).returns(T.attached_class)
          end
          def self.new(
            # Amount in the smallest unit of the applicable currency (e.g., cents)
            amount:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig { override.returns({ amount: Integer, currency: String }) }
          def to_hash
          end
        end

        class Merchant < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::Amounts::Merchant,
                Lithic::Internal::AnyHash
              )
            end

          # Amount in the smallest unit of the applicable currency (e.g., cents)
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: Integer, currency: String).returns(T.attached_class)
          end
          def self.new(
            # Amount in the smallest unit of the applicable currency (e.g., cents)
            amount:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig { override.returns({ amount: Integer, currency: String }) }
          def to_hash
          end
        end

        class Settlement < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::Amounts::Settlement,
                Lithic::Internal::AnyHash
              )
            end

          # Amount in the smallest unit of the applicable currency (e.g., cents)
          sig { returns(Integer) }
          attr_accessor :amount

          # 3-character alphabetic ISO 4217 currency
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: Integer, currency: String).returns(T.attached_class)
          end
          def self.new(
            # Amount in the smallest unit of the applicable currency (e.g., cents)
            amount:,
            # 3-character alphabetic ISO 4217 currency
            currency:
          )
          end

          sig { override.returns({ amount: Integer, currency: String }) }
          def to_hash
          end
        end
      end

      class Avs < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::CardAuthorization::Avs, Lithic::Internal::AnyHash)
          end

        # Cardholder address
        sig { returns(String) }
        attr_accessor :address

        # Lithic's evaluation result comparing the transaction's address data with the
        # cardholder KYC data if it exists. In the event Lithic does not have any
        # Cardholder KYC data, or the transaction does not contain any address data,
        # NOT_PRESENT will be returned
        sig do
          returns(
            Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol
          )
        end
        attr_accessor :address_on_file_match

        # Cardholder ZIP code
        sig { returns(String) }
        attr_accessor :zipcode

        sig do
          params(
            address: String,
            address_on_file_match:
              Lithic::CardAuthorization::Avs::AddressOnFileMatch::OrSymbol,
            zipcode: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Cardholder address
          address:,
          # Lithic's evaluation result comparing the transaction's address data with the
          # cardholder KYC data if it exists. In the event Lithic does not have any
          # Cardholder KYC data, or the transaction does not contain any address data,
          # NOT_PRESENT will be returned
          address_on_file_match:,
          # Cardholder ZIP code
          zipcode:
        )
        end

        sig do
          override.returns(
            {
              address: String,
              address_on_file_match:
                Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol,
              zipcode: String
            }
          )
        end
        def to_hash
        end

        # Lithic's evaluation result comparing the transaction's address data with the
        # cardholder KYC data if it exists. In the event Lithic does not have any
        # Cardholder KYC data, or the transaction does not contain any address data,
        # NOT_PRESENT will be returned
        module AddressOnFileMatch
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::CardAuthorization::Avs::AddressOnFileMatch)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MATCH =
            T.let(
              :MATCH,
              Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol
            )
          MATCH_ADDRESS_ONLY =
            T.let(
              :MATCH_ADDRESS_ONLY,
              Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol
            )
          MATCH_ZIP_ONLY =
            T.let(
              :MATCH_ZIP_ONLY,
              Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol
            )
          MISMATCH =
            T.let(
              :MISMATCH,
              Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol
            )
          NOT_PRESENT =
            T.let(
              :NOT_PRESENT,
              Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorization::Avs::AddressOnFileMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Card < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::CardAuthorization::Card, Lithic::Internal::AnyHash)
          end

        # Globally unique identifier for the card.
        sig { returns(String) }
        attr_accessor :token

        # Last four digits of the card number
        sig { returns(String) }
        attr_accessor :last_four

        # Customizable name to identify the card
        sig { returns(String) }
        attr_accessor :memo

        # Amount (in cents) to limit approved authorizations. Purchase requests above the
        # spend limit will be declined (refunds and credits will be approved).
        #
        # Note that while spend limits are enforced based on authorized and settled volume
        # on a card, they are not recommended to be used for balance or
        # reconciliation-level accuracy. Spend limits also cannot block force posted
        # charges (i.e., when a merchant sends a clearing message without a prior
        # authorization).
        sig { returns(Integer) }
        attr_accessor :spend_limit

        # Note that to support recurring monthly payments, which can occur on different
        # day every month, the time window we consider for MONTHLY velocity starts 6 days
        # after the current calendar date one month prior.
        sig do
          returns(
            Lithic::CardAuthorization::Card::SpendLimitDuration::TaggedSymbol
          )
        end
        attr_accessor :spend_limit_duration

        sig { returns(Lithic::CardAuthorization::Card::State::TaggedSymbol) }
        attr_accessor :state

        sig { returns(Lithic::CardAuthorization::Card::Type::TaggedSymbol) }
        attr_accessor :type

        # Card object in ASA
        sig do
          params(
            token: String,
            last_four: String,
            memo: String,
            spend_limit: Integer,
            spend_limit_duration:
              Lithic::CardAuthorization::Card::SpendLimitDuration::OrSymbol,
            state: Lithic::CardAuthorization::Card::State::OrSymbol,
            type: Lithic::CardAuthorization::Card::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the card.
          token:,
          # Last four digits of the card number
          last_four:,
          # Customizable name to identify the card
          memo:,
          # Amount (in cents) to limit approved authorizations. Purchase requests above the
          # spend limit will be declined (refunds and credits will be approved).
          #
          # Note that while spend limits are enforced based on authorized and settled volume
          # on a card, they are not recommended to be used for balance or
          # reconciliation-level accuracy. Spend limits also cannot block force posted
          # charges (i.e., when a merchant sends a clearing message without a prior
          # authorization).
          spend_limit:,
          # Note that to support recurring monthly payments, which can occur on different
          # day every month, the time window we consider for MONTHLY velocity starts 6 days
          # after the current calendar date one month prior.
          spend_limit_duration:,
          state:,
          type:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              last_four: String,
              memo: String,
              spend_limit: Integer,
              spend_limit_duration:
                Lithic::CardAuthorization::Card::SpendLimitDuration::TaggedSymbol,
              state: Lithic::CardAuthorization::Card::State::TaggedSymbol,
              type: Lithic::CardAuthorization::Card::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Note that to support recurring monthly payments, which can occur on different
        # day every month, the time window we consider for MONTHLY velocity starts 6 days
        # after the current calendar date one month prior.
        module SpendLimitDuration
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::CardAuthorization::Card::SpendLimitDuration)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNUALLY =
            T.let(
              :ANNUALLY,
              Lithic::CardAuthorization::Card::SpendLimitDuration::TaggedSymbol
            )
          FOREVER =
            T.let(
              :FOREVER,
              Lithic::CardAuthorization::Card::SpendLimitDuration::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :MONTHLY,
              Lithic::CardAuthorization::Card::SpendLimitDuration::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :TRANSACTION,
              Lithic::CardAuthorization::Card::SpendLimitDuration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorization::Card::SpendLimitDuration::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::CardAuthorization::Card::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLOSED =
            T.let(:CLOSED, Lithic::CardAuthorization::Card::State::TaggedSymbol)
          OPEN =
            T.let(:OPEN, Lithic::CardAuthorization::Card::State::TaggedSymbol)
          PAUSED =
            T.let(:PAUSED, Lithic::CardAuthorization::Card::State::TaggedSymbol)
          PENDING_ACTIVATION =
            T.let(
              :PENDING_ACTIVATION,
              Lithic::CardAuthorization::Card::State::TaggedSymbol
            )
          PENDING_FULFILLMENT =
            T.let(
              :PENDING_FULFILLMENT,
              Lithic::CardAuthorization::Card::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::CardAuthorization::Card::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::CardAuthorization::Card::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_USE =
            T.let(
              :SINGLE_USE,
              Lithic::CardAuthorization::Card::Type::TaggedSymbol
            )
          MERCHANT_LOCKED =
            T.let(
              :MERCHANT_LOCKED,
              Lithic::CardAuthorization::Card::Type::TaggedSymbol
            )
          UNLOCKED =
            T.let(
              :UNLOCKED,
              Lithic::CardAuthorization::Card::Type::TaggedSymbol
            )
          PHYSICAL =
            T.let(
              :PHYSICAL,
              Lithic::CardAuthorization::Card::Type::TaggedSymbol
            )
          DIGITAL_WALLET =
            T.let(
              :DIGITAL_WALLET,
              Lithic::CardAuthorization::Card::Type::TaggedSymbol
            )
          VIRTUAL =
            T.let(:VIRTUAL, Lithic::CardAuthorization::Card::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Lithic::CardAuthorization::Card::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Merchant < Lithic::Models::Merchant
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorization::Merchant,
              Lithic::Internal::AnyHash
            )
          end

        # Phone number of card acceptor.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone_number

        # Postal code of card acceptor.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Street address of card acceptor.
        sig { returns(T.nilable(String)) }
        attr_accessor :street_address

        # Merchant information including full location details.
        sig do
          params(
            phone_number: T.nilable(String),
            postal_code: T.nilable(String),
            street_address: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Phone number of card acceptor.
          phone_number:,
          # Postal code of card acceptor.
          postal_code:,
          # Street address of card acceptor.
          street_address:
        )
        end

        sig do
          override.returns(
            {
              phone_number: T.nilable(String),
              postal_code: T.nilable(String),
              street_address: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class ServiceLocation < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorization::ServiceLocation,
              Lithic::Internal::AnyHash
            )
          end

        # City of service location.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # Country code of service location, ISO 3166-1 alpha-3.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # Postal code of service location.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # State/province code of service location, ISO 3166-2.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # Street address of service location.
        sig { returns(T.nilable(String)) }
        attr_accessor :street_address

        # Where the cardholder received the service, when different from the card acceptor
        # location. This is populated from network data elements such as Mastercard DE-122
        # SE1 SF9-14 and Visa F34 DS02.
        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String),
            street_address: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # City of service location.
          city:,
          # Country code of service location, ISO 3166-1 alpha-3.
          country:,
          # Postal code of service location.
          postal_code:,
          # State/province code of service location, ISO 3166-2.
          state:,
          # Street address of service location.
          street_address:
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String),
              street_address: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      # The type of authorization request that this request is for. Note that
      # `CREDIT_AUTHORIZATION` and `FINANCIAL_CREDIT_AUTHORIZATION` is only available to
      # users with credit decisioning via ASA enabled.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardAuthorization::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION =
          T.let(:AUTHORIZATION, Lithic::CardAuthorization::Status::TaggedSymbol)
        CREDIT_AUTHORIZATION =
          T.let(
            :CREDIT_AUTHORIZATION,
            Lithic::CardAuthorization::Status::TaggedSymbol
          )
        FINANCIAL_AUTHORIZATION =
          T.let(
            :FINANCIAL_AUTHORIZATION,
            Lithic::CardAuthorization::Status::TaggedSymbol
          )
        FINANCIAL_CREDIT_AUTHORIZATION =
          T.let(
            :FINANCIAL_CREDIT_AUTHORIZATION,
            Lithic::CardAuthorization::Status::TaggedSymbol
          )
        BALANCE_INQUIRY =
          T.let(
            :BALANCE_INQUIRY,
            Lithic::CardAuthorization::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::CardAuthorization::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The entity that initiated the transaction.
      module TransactionInitiator
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardAuthorization::TransactionInitiator)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARDHOLDER =
          T.let(
            :CARDHOLDER,
            Lithic::CardAuthorization::TransactionInitiator::TaggedSymbol
          )
        MERCHANT =
          T.let(
            :MERCHANT,
            Lithic::CardAuthorization::TransactionInitiator::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::CardAuthorization::TransactionInitiator::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorization::TransactionInitiator::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module AccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardAuthorization::AccountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHECKING =
          T.let(:CHECKING, Lithic::CardAuthorization::AccountType::TaggedSymbol)
        SAVINGS =
          T.let(:SAVINGS, Lithic::CardAuthorization::AccountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::CardAuthorization::AccountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class FleetInfo < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorization::FleetInfo,
              Lithic::Internal::AnyHash
            )
          end

        # Code indicating what the driver was prompted to enter at time of purchase. This
        # is configured at a program level and is a static configuration, and does not
        # change on a request to request basis
        sig do
          returns(
            Lithic::CardAuthorization::FleetInfo::FleetPromptCode::TaggedSymbol
          )
        end
        attr_accessor :fleet_prompt_code

        # Code indicating which restrictions, if any, there are on purchase. This is
        # configured at a program level and is a static configuration, and does not change
        # on a request to request basis
        sig do
          returns(
            Lithic::CardAuthorization::FleetInfo::FleetRestrictionCode::TaggedSymbol
          )
        end
        attr_accessor :fleet_restriction_code

        # Number representing the driver
        sig { returns(T.nilable(String)) }
        attr_accessor :driver_number

        # Number associated with the vehicle
        sig { returns(T.nilable(String)) }
        attr_accessor :vehicle_number

        # Optional Object containing information if the Card is a part of a Fleet managed
        # program
        sig do
          params(
            fleet_prompt_code:
              Lithic::CardAuthorization::FleetInfo::FleetPromptCode::OrSymbol,
            fleet_restriction_code:
              Lithic::CardAuthorization::FleetInfo::FleetRestrictionCode::OrSymbol,
            driver_number: T.nilable(String),
            vehicle_number: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Code indicating what the driver was prompted to enter at time of purchase. This
          # is configured at a program level and is a static configuration, and does not
          # change on a request to request basis
          fleet_prompt_code:,
          # Code indicating which restrictions, if any, there are on purchase. This is
          # configured at a program level and is a static configuration, and does not change
          # on a request to request basis
          fleet_restriction_code:,
          # Number representing the driver
          driver_number: nil,
          # Number associated with the vehicle
          vehicle_number: nil
        )
        end

        sig do
          override.returns(
            {
              fleet_prompt_code:
                Lithic::CardAuthorization::FleetInfo::FleetPromptCode::TaggedSymbol,
              fleet_restriction_code:
                Lithic::CardAuthorization::FleetInfo::FleetRestrictionCode::TaggedSymbol,
              driver_number: T.nilable(String),
              vehicle_number: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Code indicating what the driver was prompted to enter at time of purchase. This
        # is configured at a program level and is a static configuration, and does not
        # change on a request to request basis
        module FleetPromptCode
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::CardAuthorization::FleetInfo::FleetPromptCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_PROMPT =
            T.let(
              :NO_PROMPT,
              Lithic::CardAuthorization::FleetInfo::FleetPromptCode::TaggedSymbol
            )
          VEHICLE_NUMBER =
            T.let(
              :VEHICLE_NUMBER,
              Lithic::CardAuthorization::FleetInfo::FleetPromptCode::TaggedSymbol
            )
          DRIVER_NUMBER =
            T.let(
              :DRIVER_NUMBER,
              Lithic::CardAuthorization::FleetInfo::FleetPromptCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorization::FleetInfo::FleetPromptCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Code indicating which restrictions, if any, there are on purchase. This is
        # configured at a program level and is a static configuration, and does not change
        # on a request to request basis
        module FleetRestrictionCode
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::CardAuthorization::FleetInfo::FleetRestrictionCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_RESTRICTIONS =
            T.let(
              :NO_RESTRICTIONS,
              Lithic::CardAuthorization::FleetInfo::FleetRestrictionCode::TaggedSymbol
            )
          FUEL_ONLY =
            T.let(
              :FUEL_ONLY,
              Lithic::CardAuthorization::FleetInfo::FleetRestrictionCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorization::FleetInfo::FleetRestrictionCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class LatestChallenge < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorization::LatestChallenge,
              Lithic::Internal::AnyHash
            )
          end

        # The phone number used for sending Authorization Challenge SMS.
        sig { returns(String) }
        attr_accessor :phone_number

        # The status of the Authorization Challenge
        #
        # - `COMPLETED` - Challenge was successfully completed by the cardholder
        # - `PENDING` - Challenge is still open
        # - `EXPIRED` - Challenge has expired without being completed
        # - `ERROR` - There was an error processing the challenge
        sig do
          returns(
            Lithic::CardAuthorization::LatestChallenge::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The date and time when the Authorization Challenge was completed in UTC. Present
        # only if the status is `COMPLETED`.
        sig { returns(T.nilable(Time)) }
        attr_reader :completed_at

        sig { params(completed_at: Time).void }
        attr_writer :completed_at

        # The latest Authorization Challenge that was issued to the cardholder for this
        # merchant.
        sig do
          params(
            phone_number: String,
            status:
              Lithic::CardAuthorization::LatestChallenge::Status::OrSymbol,
            completed_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The phone number used for sending Authorization Challenge SMS.
          phone_number:,
          # The status of the Authorization Challenge
          #
          # - `COMPLETED` - Challenge was successfully completed by the cardholder
          # - `PENDING` - Challenge is still open
          # - `EXPIRED` - Challenge has expired without being completed
          # - `ERROR` - There was an error processing the challenge
          status:,
          # The date and time when the Authorization Challenge was completed in UTC. Present
          # only if the status is `COMPLETED`.
          completed_at: nil
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              status:
                Lithic::CardAuthorization::LatestChallenge::Status::TaggedSymbol,
              completed_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the Authorization Challenge
        #
        # - `COMPLETED` - Challenge was successfully completed by the cardholder
        # - `PENDING` - Challenge is still open
        # - `EXPIRED` - Challenge has expired without being completed
        # - `ERROR` - There was an error processing the challenge
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::CardAuthorization::LatestChallenge::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPLETED =
            T.let(
              :COMPLETED,
              Lithic::CardAuthorization::LatestChallenge::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              Lithic::CardAuthorization::LatestChallenge::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :EXPIRED,
              Lithic::CardAuthorization::LatestChallenge::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              Lithic::CardAuthorization::LatestChallenge::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorization::LatestChallenge::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Card network of the authorization.
      module Network
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardAuthorization::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMEX = T.let(:AMEX, Lithic::CardAuthorization::Network::TaggedSymbol)
        INTERLINK =
          T.let(:INTERLINK, Lithic::CardAuthorization::Network::TaggedSymbol)
        MAESTRO =
          T.let(:MAESTRO, Lithic::CardAuthorization::Network::TaggedSymbol)
        MASTERCARD =
          T.let(:MASTERCARD, Lithic::CardAuthorization::Network::TaggedSymbol)
        UNKNOWN =
          T.let(:UNKNOWN, Lithic::CardAuthorization::Network::TaggedSymbol)
        VISA = T.let(:VISA, Lithic::CardAuthorization::Network::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::CardAuthorization::Network::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class NetworkSpecificData < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorization::NetworkSpecificData,
              Lithic::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorization::NetworkSpecificData::Mastercard
            )
          )
        end
        attr_reader :mastercard

        sig do
          params(
            mastercard:
              T.nilable(
                Lithic::CardAuthorization::NetworkSpecificData::Mastercard::OrHash
              )
          ).void
        end
        attr_writer :mastercard

        sig do
          returns(
            T.nilable(Lithic::CardAuthorization::NetworkSpecificData::Visa)
          )
        end
        attr_reader :visa

        sig do
          params(
            visa:
              T.nilable(
                Lithic::CardAuthorization::NetworkSpecificData::Visa::OrHash
              )
          ).void
        end
        attr_writer :visa

        # Contains raw data provided by the card network, including attributes that
        # provide further context about the authorization. If populated by the network,
        # data is organized by Lithic and passed through without further modification.
        # Please consult the official network documentation for more details about these
        # values and how to use them. This object is only available to certain programs-
        # contact your Customer Success Manager to discuss enabling access.
        sig do
          params(
            mastercard:
              T.nilable(
                Lithic::CardAuthorization::NetworkSpecificData::Mastercard::OrHash
              ),
            visa:
              T.nilable(
                Lithic::CardAuthorization::NetworkSpecificData::Visa::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(mastercard: nil, visa: nil)
        end

        sig do
          override.returns(
            {
              mastercard:
                T.nilable(
                  Lithic::CardAuthorization::NetworkSpecificData::Mastercard
                ),
              visa:
                T.nilable(Lithic::CardAuthorization::NetworkSpecificData::Visa)
            }
          )
        end
        def to_hash
        end

        class Mastercard < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::NetworkSpecificData::Mastercard,
                Lithic::Internal::AnyHash
              )
            end

          # Indicates the electronic commerce security level and UCAF collection.
          sig { returns(T.nilable(String)) }
          attr_accessor :ecommerce_security_level_indicator

          # The On-behalf Service performed on the transaction and the results. Contains all
          # applicable, on-behalf service results that were performed on a given
          # transaction.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Lithic::CardAuthorization::NetworkSpecificData::Mastercard::OnBehalfServiceResult
                ]
              )
            )
          end
          attr_accessor :on_behalf_service_result

          # Indicates the type of additional transaction purpose.
          sig { returns(T.nilable(String)) }
          attr_accessor :transaction_type_identifier

          sig do
            params(
              ecommerce_security_level_indicator: T.nilable(String),
              on_behalf_service_result:
                T.nilable(
                  T::Array[
                    Lithic::CardAuthorization::NetworkSpecificData::Mastercard::OnBehalfServiceResult::OrHash
                  ]
                ),
              transaction_type_identifier: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Indicates the electronic commerce security level and UCAF collection.
            ecommerce_security_level_indicator: nil,
            # The On-behalf Service performed on the transaction and the results. Contains all
            # applicable, on-behalf service results that were performed on a given
            # transaction.
            on_behalf_service_result: nil,
            # Indicates the type of additional transaction purpose.
            transaction_type_identifier: nil
          )
          end

          sig do
            override.returns(
              {
                ecommerce_security_level_indicator: T.nilable(String),
                on_behalf_service_result:
                  T.nilable(
                    T::Array[
                      Lithic::CardAuthorization::NetworkSpecificData::Mastercard::OnBehalfServiceResult
                    ]
                  ),
                transaction_type_identifier: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class OnBehalfServiceResult < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::CardAuthorization::NetworkSpecificData::Mastercard::OnBehalfServiceResult,
                  Lithic::Internal::AnyHash
                )
              end

            # Indicates the results of the service processing.
            sig { returns(String) }
            attr_accessor :result_1

            # Identifies the results of the service processing.
            sig { returns(String) }
            attr_accessor :result_2

            # Indicates the service performed on the transaction.
            sig { returns(String) }
            attr_accessor :service

            sig do
              params(
                result_1: String,
                result_2: String,
                service: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Indicates the results of the service processing.
              result_1:,
              # Identifies the results of the service processing.
              result_2:,
              # Indicates the service performed on the transaction.
              service:
            )
            end

            sig do
              override.returns(
                { result_1: String, result_2: String, service: String }
              )
            end
            def to_hash
            end
          end
        end

        class Visa < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::NetworkSpecificData::Visa,
                Lithic::Internal::AnyHash
              )
            end

          # Identifies the purpose or category of a transaction, used to classify and
          # process transactions according to Visa’s rules.
          sig { returns(T.nilable(String)) }
          attr_accessor :business_application_identifier

          sig do
            params(business_application_identifier: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # Identifies the purpose or category of a transaction, used to classify and
            # process transactions according to Visa’s rules.
            business_application_identifier: nil
          )
          end

          sig do
            override.returns(
              { business_application_identifier: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end

      class Pos < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::CardAuthorization::Pos, Lithic::Internal::AnyHash)
          end

        # POS > Entry Mode object in ASA
        sig { returns(T.nilable(Lithic::CardAuthorization::Pos::EntryMode)) }
        attr_reader :entry_mode

        sig do
          params(
            entry_mode: Lithic::CardAuthorization::Pos::EntryMode::OrHash
          ).void
        end
        attr_writer :entry_mode

        sig { returns(T.nilable(Lithic::CardAuthorization::Pos::Terminal)) }
        attr_reader :terminal

        sig do
          params(
            terminal: Lithic::CardAuthorization::Pos::Terminal::OrHash
          ).void
        end
        attr_writer :terminal

        sig do
          params(
            entry_mode: Lithic::CardAuthorization::Pos::EntryMode::OrHash,
            terminal: Lithic::CardAuthorization::Pos::Terminal::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # POS > Entry Mode object in ASA
          entry_mode: nil,
          terminal: nil
        )
        end

        sig do
          override.returns(
            {
              entry_mode: Lithic::CardAuthorization::Pos::EntryMode,
              terminal: Lithic::CardAuthorization::Pos::Terminal
            }
          )
        end
        def to_hash
        end

        class EntryMode < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::Pos::EntryMode,
                Lithic::Internal::AnyHash
              )
            end

          # Card Presence Indicator
          sig do
            returns(
              T.nilable(
                Lithic::CardAuthorization::Pos::EntryMode::Card::TaggedSymbol
              )
            )
          end
          attr_reader :card

          sig do
            params(
              card: Lithic::CardAuthorization::Pos::EntryMode::Card::OrSymbol
            ).void
          end
          attr_writer :card

          # Cardholder Presence Indicator
          sig do
            returns(
              T.nilable(
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            )
          end
          attr_reader :cardholder

          sig do
            params(
              cardholder:
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::OrSymbol
            ).void
          end
          attr_writer :cardholder

          # Method of entry for the PAN
          sig do
            returns(
              T.nilable(
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            )
          end
          attr_reader :pan

          sig do
            params(
              pan: Lithic::CardAuthorization::Pos::EntryMode::Pan::OrSymbol
            ).void
          end
          attr_writer :pan

          # Indicates whether the cardholder entered the PIN. True if the PIN was entered.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :pin_entered

          sig { params(pin_entered: T::Boolean).void }
          attr_writer :pin_entered

          # POS > Entry Mode object in ASA
          sig do
            params(
              card: Lithic::CardAuthorization::Pos::EntryMode::Card::OrSymbol,
              cardholder:
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::OrSymbol,
              pan: Lithic::CardAuthorization::Pos::EntryMode::Pan::OrSymbol,
              pin_entered: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Card Presence Indicator
            card: nil,
            # Cardholder Presence Indicator
            cardholder: nil,
            # Method of entry for the PAN
            pan: nil,
            # Indicates whether the cardholder entered the PIN. True if the PIN was entered.
            pin_entered: nil
          )
          end

          sig do
            override.returns(
              {
                card:
                  Lithic::CardAuthorization::Pos::EntryMode::Card::TaggedSymbol,
                cardholder:
                  Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol,
                pan:
                  Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol,
                pin_entered: T::Boolean
              }
            )
          end
          def to_hash
          end

          # Card Presence Indicator
          module Card
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::CardAuthorization::Pos::EntryMode::Card)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRESENT =
              T.let(
                :PRESENT,
                Lithic::CardAuthorization::Pos::EntryMode::Card::TaggedSymbol
              )
            NOT_PRESENT =
              T.let(
                :NOT_PRESENT,
                Lithic::CardAuthorization::Pos::EntryMode::Card::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorization::Pos::EntryMode::Card::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorization::Pos::EntryMode::Card::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Cardholder Presence Indicator
          module Cardholder
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::CardAuthorization::Pos::EntryMode::Cardholder
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEFERRED_BILLING =
              T.let(
                :DEFERRED_BILLING,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            ELECTRONIC_ORDER =
              T.let(
                :ELECTRONIC_ORDER,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            INSTALLMENT =
              T.let(
                :INSTALLMENT,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            MAIL_ORDER =
              T.let(
                :MAIL_ORDER,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            NOT_PRESENT =
              T.let(
                :NOT_PRESENT,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            PRESENT =
              T.let(
                :PRESENT,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            REOCCURRING =
              T.let(
                :REOCCURRING,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            TELEPHONE_ORDER =
              T.let(
                :TELEPHONE_ORDER,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorization::Pos::EntryMode::Cardholder::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Method of entry for the PAN
          module Pan
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::CardAuthorization::Pos::EntryMode::Pan)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTO_ENTRY =
              T.let(
                :AUTO_ENTRY,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            BAR_CODE =
              T.let(
                :BAR_CODE,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            CONTACTLESS =
              T.let(
                :CONTACTLESS,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            ECOMMERCE =
              T.let(
                :ECOMMERCE,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            ERROR_KEYED =
              T.let(
                :ERROR_KEYED,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            ERROR_MAGNETIC_STRIPE =
              T.let(
                :ERROR_MAGNETIC_STRIPE,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            ICC =
              T.let(
                :ICC,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            KEY_ENTERED =
              T.let(
                :KEY_ENTERED,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            MAGNETIC_STRIPE =
              T.let(
                :MAGNETIC_STRIPE,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            MANUAL =
              T.let(
                :MANUAL,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            OCR =
              T.let(
                :OCR,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            SECURE_CARDLESS =
              T.let(
                :SECURE_CARDLESS,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )
            CREDENTIAL_ON_FILE =
              T.let(
                :CREDENTIAL_ON_FILE,
                Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorization::Pos::EntryMode::Pan::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Terminal < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorization::Pos::Terminal,
                Lithic::Internal::AnyHash
              )
            end

          # True if a clerk is present at the sale.
          sig { returns(T::Boolean) }
          attr_accessor :attended

          # True if the terminal is capable of retaining the card.
          sig { returns(T::Boolean) }
          attr_accessor :card_retention_capable

          # True if the sale was made at the place of business (vs. mobile).
          sig { returns(T::Boolean) }
          attr_accessor :on_premise

          # The person that is designated to swipe the card
          sig do
            returns(
              Lithic::CardAuthorization::Pos::Terminal::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # True if the terminal is capable of partial approval. Partial approval is when
          # part of a transaction is approved and another payment must be used for the
          # remainder. Example scenario: A $40 transaction is attempted on a prepaid card
          # with a $25 balance. If partial approval is enabled, $25 can be authorized, at
          # which point the POS will prompt the user for an additional payment of $15.
          sig { returns(T::Boolean) }
          attr_accessor :partial_approval_capable

          # Status of whether the POS is able to accept PINs
          sig do
            returns(
              Lithic::CardAuthorization::Pos::Terminal::PinCapability::TaggedSymbol
            )
          end
          attr_accessor :pin_capability

          # POS Type
          sig do
            returns(
              Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # Uniquely identifies a terminal at the card acceptor location of acquiring
          # institutions or merchant POS Systems. Left justified with trailing spaces.
          sig { returns(T.nilable(String)) }
          attr_accessor :acceptor_terminal_id

          sig do
            params(
              attended: T::Boolean,
              card_retention_capable: T::Boolean,
              on_premise: T::Boolean,
              operator:
                Lithic::CardAuthorization::Pos::Terminal::Operator::OrSymbol,
              partial_approval_capable: T::Boolean,
              pin_capability:
                Lithic::CardAuthorization::Pos::Terminal::PinCapability::OrSymbol,
              type: Lithic::CardAuthorization::Pos::Terminal::Type::OrSymbol,
              acceptor_terminal_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # True if a clerk is present at the sale.
            attended:,
            # True if the terminal is capable of retaining the card.
            card_retention_capable:,
            # True if the sale was made at the place of business (vs. mobile).
            on_premise:,
            # The person that is designated to swipe the card
            operator:,
            # True if the terminal is capable of partial approval. Partial approval is when
            # part of a transaction is approved and another payment must be used for the
            # remainder. Example scenario: A $40 transaction is attempted on a prepaid card
            # with a $25 balance. If partial approval is enabled, $25 can be authorized, at
            # which point the POS will prompt the user for an additional payment of $15.
            partial_approval_capable:,
            # Status of whether the POS is able to accept PINs
            pin_capability:,
            # POS Type
            type:,
            # Uniquely identifies a terminal at the card acceptor location of acquiring
            # institutions or merchant POS Systems. Left justified with trailing spaces.
            acceptor_terminal_id: nil
          )
          end

          sig do
            override.returns(
              {
                attended: T::Boolean,
                card_retention_capable: T::Boolean,
                on_premise: T::Boolean,
                operator:
                  Lithic::CardAuthorization::Pos::Terminal::Operator::TaggedSymbol,
                partial_approval_capable: T::Boolean,
                pin_capability:
                  Lithic::CardAuthorization::Pos::Terminal::PinCapability::TaggedSymbol,
                type:
                  Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol,
                acceptor_terminal_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The person that is designated to swipe the card
          module Operator
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::CardAuthorization::Pos::Terminal::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE =
              T.let(
                :ADMINISTRATIVE,
                Lithic::CardAuthorization::Pos::Terminal::Operator::TaggedSymbol
              )
            CARDHOLDER =
              T.let(
                :CARDHOLDER,
                Lithic::CardAuthorization::Pos::Terminal::Operator::TaggedSymbol
              )
            CARD_ACCEPTOR =
              T.let(
                :CARD_ACCEPTOR,
                Lithic::CardAuthorization::Pos::Terminal::Operator::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorization::Pos::Terminal::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorization::Pos::Terminal::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Status of whether the POS is able to accept PINs
          module PinCapability
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::CardAuthorization::Pos::Terminal::PinCapability
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CAPABLE =
              T.let(
                :CAPABLE,
                Lithic::CardAuthorization::Pos::Terminal::PinCapability::TaggedSymbol
              )
            INOPERATIVE =
              T.let(
                :INOPERATIVE,
                Lithic::CardAuthorization::Pos::Terminal::PinCapability::TaggedSymbol
              )
            NOT_CAPABLE =
              T.let(
                :NOT_CAPABLE,
                Lithic::CardAuthorization::Pos::Terminal::PinCapability::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                Lithic::CardAuthorization::Pos::Terminal::PinCapability::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorization::Pos::Terminal::PinCapability::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # POS Type
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Lithic::CardAuthorization::Pos::Terminal::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE =
              T.let(
                :ADMINISTRATIVE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            ATM =
              T.let(
                :ATM,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            AUTHORIZATION =
              T.let(
                :AUTHORIZATION,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            COUPON_MACHINE =
              T.let(
                :COUPON_MACHINE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            DIAL_TERMINAL =
              T.let(
                :DIAL_TERMINAL,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            ECOMMERCE =
              T.let(
                :ECOMMERCE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            ECR =
              T.let(
                :ECR,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            FUEL_MACHINE =
              T.let(
                :FUEL_MACHINE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            HOME_TERMINAL =
              T.let(
                :HOME_TERMINAL,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            MICR =
              T.let(
                :MICR,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            OFF_PREMISE =
              T.let(
                :OFF_PREMISE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            PAYMENT =
              T.let(
                :PAYMENT,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            PDA =
              T.let(
                :PDA,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            PHONE =
              T.let(
                :PHONE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            POINT =
              T.let(
                :POINT,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            POS_TERMINAL =
              T.let(
                :POS_TERMINAL,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            PUBLIC_UTILITY =
              T.let(
                :PUBLIC_UTILITY,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            SELF_SERVICE =
              T.let(
                :SELF_SERVICE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            TELEVISION =
              T.let(
                :TELEVISION,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            TELLER =
              T.let(
                :TELLER,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            TRAVELERS_CHECK_MACHINE =
              T.let(
                :TRAVELERS_CHECK_MACHINE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            VENDING =
              T.let(
                :VENDING,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            VOICE =
              T.let(
                :VOICE,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorization::Pos::Terminal::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
