# typed: strong

module Lithic
  module Models
    class CardAuthorizationApprovalRequestWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The provisional transaction group uuid associated with the authorization
      sig { returns(String) }
      attr_accessor :token

      # Fee (in cents) assessed by the merchant and paid for by the cardholder. Will be
      # zero if no fee is assessed. Rebates may be transmitted as a negative value to
      # indicate credited fees.
      sig { returns(Integer) }
      attr_accessor :acquirer_fee

      # Authorization amount of the transaction (in cents), including any acquirer fees.
      # The contents of this field are identical to `authorization_amount`.
      sig { returns(Integer) }
      attr_accessor :amount

      # The base transaction amount (in cents) plus the acquirer fee field. This is the
      # amount the issuer should authorize against unless the issuer is paying the
      # acquirer fee on behalf of the cardholder.
      sig { returns(Integer) }
      attr_accessor :authorization_amount

      sig { returns(Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs) }
      attr_reader :avs

      sig do
        params(
          avs: Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::OrHash
        ).void
      end
      attr_writer :avs

      # Card object in ASA
      sig do
        returns(Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card)
      end
      attr_reader :card

      sig do
        params(
          card:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::OrHash
        ).void
      end
      attr_writer :card

      # 3-character alphabetic ISO 4217 code for cardholder's billing currency.
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

      sig { returns(Symbol) }
      attr_accessor :event_type

      sig { returns(Lithic::Merchant) }
      attr_reader :merchant

      sig { params(merchant: Lithic::Merchant::OrHash).void }
      attr_writer :merchant

      # The amount that the merchant will receive, denominated in `merchant_currency`
      # and in the smallest currency unit. Note the amount includes `acquirer_fee`,
      # similar to `authorization_amount`. It will be different from
      # `authorization_amount` if the merchant is taking payment in a different
      # currency.
      sig { returns(Integer) }
      attr_accessor :merchant_amount

      # 3-character alphabetic ISO 4217 code for the local currency of the transaction.
      sig { returns(String) }
      attr_accessor :merchant_currency

      # Amount (in cents) of the transaction that has been settled, including any
      # acquirer fees
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # The type of authorization request that this request is for. Note that
      # `CREDIT_AUTHORIZATION` and `FINANCIAL_CREDIT_AUTHORIZATION` is only available to
      # users with credit decisioning via ASA enabled.
      sig do
        returns(
          Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The entity that initiated the transaction.
      sig do
        returns(
          Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator::TaggedSymbol
        )
      end
      attr_accessor :transaction_initiator

      sig do
        returns(
          T.nilable(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType::TaggedSymbol
          )
        )
      end
      attr_reader :account_type

      sig do
        params(
          account_type:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType::OrSymbol
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

      # If the transaction was requested in a currency other than the settlement
      # currency, this field will be populated to indicate the rate used to translate
      # the merchant_amount to the amount (i.e., `merchant_amount` x `conversion_rate` =
      # `amount`). Note that the `merchant_amount` is in the local currency and the
      # amount is in the settlement currency.
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
      sig do
        returns(
          T.nilable(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo
          )
        )
      end
      attr_reader :fleet_info

      sig do
        params(
          fleet_info:
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::OrHash
            )
        ).void
      end
      attr_writer :fleet_info

      # The latest Authorization Challenge that was issued to the cardholder for this
      # merchant.
      sig do
        returns(
          T.nilable(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge
          )
        )
      end
      attr_reader :latest_challenge

      sig do
        params(
          latest_challenge:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::OrHash
        ).void
      end
      attr_writer :latest_challenge

      # Card network of the authorization.
      sig do
        returns(
          T.nilable(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
          )
        )
      end
      attr_reader :network

      sig do
        params(
          network:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::OrSymbol
        ).void
      end
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
      sig do
        returns(
          T.nilable(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData
          )
        )
      end
      attr_reader :network_specific_data

      sig do
        params(
          network_specific_data:
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::OrHash
            )
        ).void
      end
      attr_writer :network_specific_data

      sig do
        returns(
          T.nilable(Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos)
        )
      end
      attr_reader :pos

      sig do
        params(
          pos: Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::OrHash
        ).void
      end
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

      sig do
        params(
          token: String,
          acquirer_fee: Integer,
          amount: Integer,
          authorization_amount: Integer,
          avs:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::OrHash,
          card:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::OrHash,
          cardholder_currency: String,
          cash_amount: Integer,
          created: Time,
          merchant: Lithic::Merchant::OrHash,
          merchant_amount: Integer,
          merchant_currency: String,
          settled_amount: Integer,
          status:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::OrSymbol,
          transaction_initiator:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator::OrSymbol,
          account_type:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType::OrSymbol,
          cardholder_authentication: Lithic::CardholderAuthentication::OrHash,
          cashback: Integer,
          conversion_rate: Float,
          event_token: String,
          fleet_info:
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::OrHash
            ),
          latest_challenge:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::OrHash,
          network:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::OrSymbol,
          network_risk_score: T.nilable(Integer),
          network_specific_data:
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::OrHash
            ),
          pos:
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::OrHash,
          token_info: T.nilable(Lithic::TokenInfo::OrHash),
          ttl: Time,
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The provisional transaction group uuid associated with the authorization
        token:,
        # Fee (in cents) assessed by the merchant and paid for by the cardholder. Will be
        # zero if no fee is assessed. Rebates may be transmitted as a negative value to
        # indicate credited fees.
        acquirer_fee:,
        # Authorization amount of the transaction (in cents), including any acquirer fees.
        # The contents of this field are identical to `authorization_amount`.
        amount:,
        # The base transaction amount (in cents) plus the acquirer fee field. This is the
        # amount the issuer should authorize against unless the issuer is paying the
        # acquirer fee on behalf of the cardholder.
        authorization_amount:,
        avs:,
        # Card object in ASA
        card:,
        # 3-character alphabetic ISO 4217 code for cardholder's billing currency.
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
        merchant:,
        # The amount that the merchant will receive, denominated in `merchant_currency`
        # and in the smallest currency unit. Note the amount includes `acquirer_fee`,
        # similar to `authorization_amount`. It will be different from
        # `authorization_amount` if the merchant is taking payment in a different
        # currency.
        merchant_amount:,
        # 3-character alphabetic ISO 4217 code for the local currency of the transaction.
        merchant_currency:,
        # Amount (in cents) of the transaction that has been settled, including any
        # acquirer fees
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
        # If the transaction was requested in a currency other than the settlement
        # currency, this field will be populated to indicate the rate used to translate
        # the merchant_amount to the amount (i.e., `merchant_amount` x `conversion_rate` =
        # `amount`). Note that the `merchant_amount` is in the local currency and the
        # amount is in the settlement currency.
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
        ttl: nil,
        event_type: :"card_authorization.approval_request"
      )
      end

      sig do
        override.returns(
          {
            token: String,
            acquirer_fee: Integer,
            amount: Integer,
            authorization_amount: Integer,
            avs: Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs,
            card: Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card,
            cardholder_currency: String,
            cash_amount: Integer,
            created: Time,
            event_type: Symbol,
            merchant: Lithic::Merchant,
            merchant_amount: Integer,
            merchant_currency: String,
            settled_amount: Integer,
            status:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol,
            transaction_initiator:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator::TaggedSymbol,
            account_type:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType::TaggedSymbol,
            cardholder_authentication: Lithic::CardholderAuthentication,
            cashback: Integer,
            conversion_rate: Float,
            event_token: String,
            fleet_info:
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo
              ),
            latest_challenge:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge,
            network:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol,
            network_risk_score: T.nilable(Integer),
            network_specific_data:
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData
              ),
            pos: Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos,
            token_info: T.nilable(Lithic::TokenInfo),
            ttl: Time
          }
        )
      end
      def to_hash
      end

      class Avs < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs,
              Lithic::Internal::AnyHash
            )
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
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol
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
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::OrSymbol,
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol,
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
              T.all(
                Symbol,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MATCH =
            T.let(
              :MATCH,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol
            )
          MATCH_ADDRESS_ONLY =
            T.let(
              :MATCH_ADDRESS_ONLY,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol
            )
          MATCH_ZIP_ONLY =
            T.let(
              :MATCH_ZIP_ONLY,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol
            )
          MISMATCH =
            T.let(
              :MISMATCH,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol
            )
          NOT_PRESENT =
            T.let(
              :NOT_PRESENT,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Avs::AddressOnFileMatch::TaggedSymbol
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
            T.any(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the card.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        # Hostname of card’s locked merchant (will be empty if not applicable)
        sig { returns(T.nilable(String)) }
        attr_reader :hostname

        sig { params(hostname: String).void }
        attr_writer :hostname

        # Last four digits of the card number
        sig { returns(T.nilable(String)) }
        attr_reader :last_four

        sig { params(last_four: String).void }
        attr_writer :last_four

        # Customizable name to identify the card. We recommend against using this field to
        # store JSON data as it can cause unexpected behavior.
        sig { returns(T.nilable(String)) }
        attr_reader :memo

        sig { params(memo: String).void }
        attr_writer :memo

        # Amount (in cents) to limit approved authorizations. Purchase requests above the
        # spend limit will be declined (refunds and credits will be approved).
        #
        # Note that while spend limits are enforced based on authorized and settled volume
        # on a card, they are not recommended to be used for balance or
        # reconciliation-level accuracy. Spend limits also cannot block force posted
        # charges (i.e., when a merchant sends a clearing message without a prior
        # authorization).
        sig { returns(T.nilable(Integer)) }
        attr_reader :spend_limit

        sig { params(spend_limit: Integer).void }
        attr_writer :spend_limit

        # Note that to support recurring monthly payments, which can occur on different
        # day every month, the time window we consider for MONTHLY velocity starts 6 days
        # after the current calendar date one month prior.
        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::TaggedSymbol
            )
          )
        end
        attr_reader :spend_limit_duration

        sig do
          params(
            spend_limit_duration:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::OrSymbol
          ).void
        end
        attr_writer :spend_limit_duration

        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol
            )
          )
        end
        attr_reader :state

        sig do
          params(
            state:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::OrSymbol
          ).void
        end
        attr_writer :state

        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Card object in ASA
        sig do
          params(
            token: String,
            hostname: String,
            last_four: String,
            memo: String,
            spend_limit: Integer,
            spend_limit_duration:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::OrSymbol,
            state:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::OrSymbol,
            type:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the card.
          token: nil,
          # Hostname of card’s locked merchant (will be empty if not applicable)
          hostname: nil,
          # Last four digits of the card number
          last_four: nil,
          # Customizable name to identify the card. We recommend against using this field to
          # store JSON data as it can cause unexpected behavior.
          memo: nil,
          # Amount (in cents) to limit approved authorizations. Purchase requests above the
          # spend limit will be declined (refunds and credits will be approved).
          #
          # Note that while spend limits are enforced based on authorized and settled volume
          # on a card, they are not recommended to be used for balance or
          # reconciliation-level accuracy. Spend limits also cannot block force posted
          # charges (i.e., when a merchant sends a clearing message without a prior
          # authorization).
          spend_limit: nil,
          # Note that to support recurring monthly payments, which can occur on different
          # day every month, the time window we consider for MONTHLY velocity starts 6 days
          # after the current calendar date one month prior.
          spend_limit_duration: nil,
          state: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              hostname: String,
              last_four: String,
              memo: String,
              spend_limit: Integer,
              spend_limit_duration:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::TaggedSymbol,
              state:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol,
              type:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
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
              T.all(
                Symbol,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNUALLY =
            T.let(
              :ANNUALLY,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::TaggedSymbol
            )
          FOREVER =
            T.let(
              :FOREVER,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :MONTHLY,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :TRANSACTION,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::SpendLimitDuration::TaggedSymbol
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
              T.all(
                Symbol,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLOSED =
            T.let(
              :CLOSED,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol
            )
          OPEN =
            T.let(
              :OPEN,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol
            )
          PAUSED =
            T.let(
              :PAUSED,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol
            )
          PENDING_ACTIVATION =
            T.let(
              :PENDING_ACTIVATION,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol
            )
          PENDING_FULFILLMENT =
            T.let(
              :PENDING_FULFILLMENT,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_USE =
            T.let(
              :SINGLE_USE,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
            )
          MERCHANT_LOCKED =
            T.let(
              :MERCHANT_LOCKED,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
            )
          UNLOCKED =
            T.let(
              :UNLOCKED,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
            )
          PHYSICAL =
            T.let(
              :PHYSICAL,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
            )
          DIGITAL_WALLET =
            T.let(
              :DIGITAL_WALLET,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
            )
          VIRTUAL =
            T.let(
              :VIRTUAL,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Card::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The type of authorization request that this request is for. Note that
      # `CREDIT_AUTHORIZATION` and `FINANCIAL_CREDIT_AUTHORIZATION` is only available to
      # users with credit decisioning via ASA enabled.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION =
          T.let(
            :AUTHORIZATION,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol
          )
        CREDIT_AUTHORIZATION =
          T.let(
            :CREDIT_AUTHORIZATION,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol
          )
        FINANCIAL_AUTHORIZATION =
          T.let(
            :FINANCIAL_AUTHORIZATION,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol
          )
        FINANCIAL_CREDIT_AUTHORIZATION =
          T.let(
            :FINANCIAL_CREDIT_AUTHORIZATION,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol
          )
        BALANCE_INQUIRY =
          T.let(
            :BALANCE_INQUIRY,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Status::TaggedSymbol
            ]
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
            T.all(
              Symbol,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARDHOLDER =
          T.let(
            :CARDHOLDER,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator::TaggedSymbol
          )
        MERCHANT =
          T.let(
            :MERCHANT,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::TransactionInitiator::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module AccountType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHECKING =
          T.let(
            :CHECKING,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType::TaggedSymbol
          )
        SAVINGS =
          T.let(
            :SAVINGS,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::AccountType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class FleetInfo < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo,
              Lithic::Internal::AnyHash
            )
          end

        # Code indicating what the driver was prompted to enter at time of purchase. This
        # is configured at a program level and is a static configuration, and does not
        # change on a request to request basis
        sig do
          returns(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode::TaggedSymbol
          )
        end
        attr_accessor :fleet_prompt_code

        # Code indicating which restrictions, if any, there are on purchase. This is
        # configured at a program level and is a static configuration, and does not change
        # on a request to request basis
        sig do
          returns(
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode::TaggedSymbol
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
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode::OrSymbol,
            fleet_restriction_code:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode::OrSymbol,
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode::TaggedSymbol,
              fleet_restriction_code:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode::TaggedSymbol,
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_PROMPT =
            T.let(
              :NO_PROMPT,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode::TaggedSymbol
            )
          VEHICLE_NUMBER =
            T.let(
              :VEHICLE_NUMBER,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode::TaggedSymbol
            )
          DRIVER_NUMBER =
            T.let(
              :DRIVER_NUMBER,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetPromptCode::TaggedSymbol
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_RESTRICTIONS =
            T.let(
              :NO_RESTRICTIONS,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode::TaggedSymbol
            )
          FUEL_ONLY =
            T.let(
              :FUEL_ONLY,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::FleetInfo::FleetRestrictionCode::TaggedSymbol
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
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge,
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
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::TaggedSymbol
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
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::OrSymbol,
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::TaggedSymbol,
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
              T.all(
                Symbol,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPLETED =
            T.let(
              :COMPLETED,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :EXPIRED,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::LatestChallenge::Status::TaggedSymbol
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
          T.type_alias do
            T.all(
              Symbol,
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMEX =
          T.let(
            :AMEX,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
          )
        INTERLINK =
          T.let(
            :INTERLINK,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
          )
        MAESTRO =
          T.let(
            :MAESTRO,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
          )
        MASTERCARD =
          T.let(
            :MASTERCARD,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
          )
        VISA =
          T.let(
            :VISA,
            Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Network::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class NetworkSpecificData < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData,
              Lithic::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard
            )
          )
        end
        attr_reader :mastercard

        sig do
          params(
            mastercard:
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OrHash
              )
          ).void
        end
        attr_writer :mastercard

        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa
            )
          )
        end
        attr_reader :visa

        sig do
          params(
            visa:
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa::OrHash
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OrHash
              ),
            visa:
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa::OrHash
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard
                ),
              visa:
                T.nilable(
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa
                )
            }
          )
        end
        def to_hash
        end

        class Mastercard < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard,
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OnBehalfServiceResult
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
                    Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OnBehalfServiceResult::OrHash
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
                      Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OnBehalfServiceResult
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Mastercard::OnBehalfServiceResult,
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::NetworkSpecificData::Visa,
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
            T.any(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos,
              Lithic::Internal::AnyHash
            )
          end

        # POS > Entry Mode object in ASA
        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode
            )
          )
        end
        attr_reader :entry_mode

        sig do
          params(
            entry_mode:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::OrHash
          ).void
        end
        attr_writer :entry_mode

        sig do
          returns(
            T.nilable(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal
            )
          )
        end
        attr_reader :terminal

        sig do
          params(
            terminal:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::OrHash
          ).void
        end
        attr_writer :terminal

        sig do
          params(
            entry_mode:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::OrHash,
            terminal:
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::OrHash
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
              entry_mode:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode,
              terminal:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal
            }
          )
        end
        def to_hash
        end

        class EntryMode < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode,
                Lithic::Internal::AnyHash
              )
            end

          # Card Presence Indicator
          sig do
            returns(
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::TaggedSymbol
              )
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::OrSymbol
            ).void
          end
          attr_writer :card

          # Cardholder Presence Indicator
          sig do
            returns(
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            )
          end
          attr_reader :cardholder

          sig do
            params(
              cardholder:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::OrSymbol
            ).void
          end
          attr_writer :cardholder

          # Method of entry for the PAN
          sig do
            returns(
              T.nilable(
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            )
          end
          attr_reader :pan

          sig do
            params(
              pan:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::OrSymbol
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
              card:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::OrSymbol,
              cardholder:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::OrSymbol,
              pan:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::OrSymbol,
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::TaggedSymbol,
                cardholder:
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol,
                pan:
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol,
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
                T.all(
                  Symbol,
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRESENT =
              T.let(
                :PRESENT,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::TaggedSymbol
              )
            NOT_PRESENT =
              T.let(
                :NOT_PRESENT,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Card::TaggedSymbol
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEFERRED_BILLING =
              T.let(
                :DEFERRED_BILLING,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            ELECTRONIC_ORDER =
              T.let(
                :ELECTRONIC_ORDER,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            INSTALLMENT =
              T.let(
                :INSTALLMENT,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            MAIL_ORDER =
              T.let(
                :MAIL_ORDER,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            NOT_PRESENT =
              T.let(
                :NOT_PRESENT,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            PRESENT =
              T.let(
                :PRESENT,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            REOCCURRING =
              T.let(
                :REOCCURRING,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            TELEPHONE_ORDER =
              T.let(
                :TELEPHONE_ORDER,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Cardholder::TaggedSymbol
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
                T.all(
                  Symbol,
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTO_ENTRY =
              T.let(
                :AUTO_ENTRY,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            BAR_CODE =
              T.let(
                :BAR_CODE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            CONTACTLESS =
              T.let(
                :CONTACTLESS,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            ECOMMERCE =
              T.let(
                :ECOMMERCE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            ERROR_KEYED =
              T.let(
                :ERROR_KEYED,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            ERROR_MAGNETIC_STRIPE =
              T.let(
                :ERROR_MAGNETIC_STRIPE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            ICC =
              T.let(
                :ICC,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            KEY_ENTERED =
              T.let(
                :KEY_ENTERED,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            MAGNETIC_STRIPE =
              T.let(
                :MAGNETIC_STRIPE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            MANUAL =
              T.let(
                :MANUAL,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            OCR =
              T.let(
                :OCR,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            SECURE_CARDLESS =
              T.let(
                :SECURE_CARDLESS,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )
            CREDENTIAL_ON_FILE =
              T.let(
                :CREDENTIAL_ON_FILE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::EntryMode::Pan::TaggedSymbol
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal,
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
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::TaggedSymbol
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
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::TaggedSymbol
            )
          end
          attr_accessor :pin_capability

          # POS Type
          sig do
            returns(
              Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
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
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::OrSymbol,
              partial_approval_capable: T::Boolean,
              pin_capability:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::OrSymbol,
              type:
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::OrSymbol,
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::TaggedSymbol,
                partial_approval_capable: T::Boolean,
                pin_capability:
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::TaggedSymbol,
                type:
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol,
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE =
              T.let(
                :ADMINISTRATIVE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::TaggedSymbol
              )
            CARDHOLDER =
              T.let(
                :CARDHOLDER,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::TaggedSymbol
              )
            CARD_ACCEPTOR =
              T.let(
                :CARD_ACCEPTOR,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Operator::TaggedSymbol
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
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CAPABLE =
              T.let(
                :CAPABLE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::TaggedSymbol
              )
            INOPERATIVE =
              T.let(
                :INOPERATIVE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::TaggedSymbol
              )
            NOT_CAPABLE =
              T.let(
                :NOT_CAPABLE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::PinCapability::TaggedSymbol
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
                T.all(
                  Symbol,
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMINISTRATIVE =
              T.let(
                :ADMINISTRATIVE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            ATM =
              T.let(
                :ATM,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            AUTHORIZATION =
              T.let(
                :AUTHORIZATION,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            COUPON_MACHINE =
              T.let(
                :COUPON_MACHINE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            DIAL_TERMINAL =
              T.let(
                :DIAL_TERMINAL,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            ECOMMERCE =
              T.let(
                :ECOMMERCE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            ECR =
              T.let(
                :ECR,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            FUEL_MACHINE =
              T.let(
                :FUEL_MACHINE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            HOME_TERMINAL =
              T.let(
                :HOME_TERMINAL,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            MICR =
              T.let(
                :MICR,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            OFF_PREMISE =
              T.let(
                :OFF_PREMISE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            PAYMENT =
              T.let(
                :PAYMENT,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            PDA =
              T.let(
                :PDA,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            PHONE =
              T.let(
                :PHONE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            POINT =
              T.let(
                :POINT,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            POS_TERMINAL =
              T.let(
                :POS_TERMINAL,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            PUBLIC_UTILITY =
              T.let(
                :PUBLIC_UTILITY,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            SELF_SERVICE =
              T.let(
                :SELF_SERVICE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            TELEVISION =
              T.let(
                :TELEVISION,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            TELLER =
              T.let(
                :TELLER,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            TRAVELERS_CHECK_MACHINE =
              T.let(
                :TRAVELERS_CHECK_MACHINE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            VENDING =
              T.let(
                :VENDING,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            VOICE =
              T.let(
                :VOICE,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::CardAuthorizationApprovalRequestWebhookEvent::Pos::Terminal::Type::TaggedSymbol
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
