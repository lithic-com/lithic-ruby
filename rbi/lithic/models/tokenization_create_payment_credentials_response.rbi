# typed: strong

module Lithic
  module Models
    class TokenizationCreatePaymentCredentialsResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse,
            Lithic::Internal::AnyHash
          )
        end

      # Globally unique identifier for the payment credential resource
      sig { returns(String) }
      attr_accessor :token

      # Globally unique identifier for the associated agent
      sig { returns(String) }
      attr_accessor :agent_token

      # Date and time when the payment credential resource was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Payment credential and dynamic security code for the purchase
      sig do
        returns(
          Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials
        )
      end
      attr_reader :credentials

      sig do
        params(
          credentials:
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials::OrHash
        ).void
      end
      attr_writer :credentials

      sig do
        returns(
          Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate
        )
      end
      attr_reader :mandate

      sig do
        params(
          mandate:
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::OrHash
        ).void
      end
      attr_writer :mandate

      # Status of the payment credential resource. New credentials have status ACTIVE
      sig do
        returns(
          Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # Globally unique identifier for the associated tokenization
      sig { returns(String) }
      attr_accessor :tokenization_token

      # Type of purchase for which payment credentials are requested
      sig do
        returns(
          Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Date and time when the payment credential resource was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          token: String,
          agent_token: String,
          created_at: Time,
          credentials:
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials::OrHash,
          mandate:
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::OrHash,
          status:
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::OrSymbol,
          tokenization_token: String,
          type:
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier for the payment credential resource
        token:,
        # Globally unique identifier for the associated agent
        agent_token:,
        # Date and time when the payment credential resource was created
        created_at:,
        # Payment credential and dynamic security code for the purchase
        credentials:,
        mandate:,
        # Status of the payment credential resource. New credentials have status ACTIVE
        status:,
        # Globally unique identifier for the associated tokenization
        tokenization_token:,
        # Type of purchase for which payment credentials are requested
        type:,
        # Date and time when the payment credential resource was last updated
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            agent_token: String,
            created_at: Time,
            credentials:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials,
            mandate:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate,
            status:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::TaggedSymbol,
            tokenization_token: String,
            type:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Credentials < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Credentials,
              Lithic::Internal::AnyHash
            )
          end

        # Dynamic card security code for the purchase
        sig { returns(String) }
        attr_accessor :cvv

        # Expiration month of the payment credential
        sig { returns(String) }
        attr_accessor :expiration_month

        # Expiration year of the payment credential
        sig { returns(String) }
        attr_accessor :expiration_year

        # Date and time when the dynamic security code expires
        sig { returns(Time) }
        attr_accessor :expires_at

        # Payment credential to use as the card number for the purchase
        sig { returns(String) }
        attr_accessor :value

        # Payment credential and dynamic security code for the purchase
        sig do
          params(
            cvv: String,
            expiration_month: String,
            expiration_year: String,
            expires_at: Time,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Dynamic card security code for the purchase
          cvv:,
          # Expiration month of the payment credential
          expiration_month:,
          # Expiration year of the payment credential
          expiration_year:,
          # Date and time when the dynamic security code expires
          expires_at:,
          # Payment credential to use as the card number for the purchase
          value:
        )
        end

        sig do
          override.returns(
            {
              cvv: String,
              expiration_month: String,
              expiration_year: String,
              expires_at: Time,
              value: String
            }
          )
        end
        def to_hash
        end
      end

      class Mandate < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the mandate
        sig { returns(String) }
        attr_accessor :token

        # Purchase amount and mandate limit in USD cents
        sig { returns(Integer) }
        attr_accessor :amount

        # Date and time when the mandate expires, independent of the payment credentials'
        # expiration
        sig { returns(Time) }
        attr_accessor :expires_at

        # Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
        sig do
          returns(
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::TaggedSymbol
          )
        end
        attr_accessor :frequency

        sig do
          returns(
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant
          )
        end
        attr_reader :merchant

        sig do
          params(
            merchant:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant::OrHash
          ).void
        end
        attr_writer :merchant

        # Status of the mandate. New mandates have status PENDING
        sig do
          returns(
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            token: String,
            amount: Integer,
            expires_at: Time,
            frequency:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::OrSymbol,
            merchant:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant::OrHash,
            status:
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the mandate
          token:,
          # Purchase amount and mandate limit in USD cents
          amount:,
          # Date and time when the mandate expires, independent of the payment credentials'
          # expiration
          expires_at:,
          # Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
          frequency:,
          merchant:,
          # Status of the mandate. New mandates have status PENDING
          status:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              expires_at: Time,
              frequency:
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::TaggedSymbol,
              merchant:
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant,
              status:
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
        module Frequency
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :ONE_TIME,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :MONTHLY,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::TaggedSymbol
            )
          YEARLY =
            T.let(
              :YEARLY,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Frequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Merchant < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Merchant,
                Lithic::Internal::AnyHash
              )
            end

          # Merchant name
          sig { returns(String) }
          attr_accessor :name

          # Merchant website URL
          sig { returns(String) }
          attr_accessor :url

          sig { params(name: String, url: String).returns(T.attached_class) }
          def self.new(
            # Merchant name
            name:,
            # Merchant website URL
            url:
          )
          end

          sig { override.returns({ name: String, url: String }) }
          def to_hash
          end
        end

        # Status of the mandate. New mandates have status PENDING
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :COMPLETED,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :CANCELLED,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Mandate::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Status of the payment credential resource. New credentials have status ACTIVE
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :ACTIVE,
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::TaggedSymbol
          )
        DEACTIVATED =
          T.let(
            :DEACTIVATED,
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :COMPLETED,
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :CANCELLED,
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Type of purchase for which payment credentials are requested
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTONOMOUS =
          T.let(
            :AUTONOMOUS,
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type::TaggedSymbol
          )
        HUMAN_IN_THE_LOOP =
          T.let(
            :HUMAN_IN_THE_LOOP,
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type::TaggedSymbol
          )
        RECURRING =
          T.let(
            :RECURRING,
            Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::Models::TokenizationCreatePaymentCredentialsResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
