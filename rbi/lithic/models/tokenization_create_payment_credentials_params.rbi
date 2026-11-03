# typed: strong

module Lithic
  module Models
    class TokenizationCreatePaymentCredentialsParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationCreatePaymentCredentialsParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :tokenization_token

      # Device used for the purchase
      sig do
        returns(Lithic::TokenizationCreatePaymentCredentialsParams::Device)
      end
      attr_reader :device

      sig do
        params(
          device:
            Lithic::TokenizationCreatePaymentCredentialsParams::Device::OrHash
        ).void
      end
      attr_writer :device

      sig do
        returns(Lithic::TokenizationCreatePaymentCredentialsParams::Mandate)
      end
      attr_reader :mandate

      sig do
        params(
          mandate:
            Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::OrHash
        ).void
      end
      attr_writer :mandate

      # Type of purchase for which payment credentials are requested
      sig do
        returns(
          Lithic::TokenizationCreatePaymentCredentialsParams::Type::OrSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          tokenization_token: String,
          device:
            Lithic::TokenizationCreatePaymentCredentialsParams::Device::OrHash,
          mandate:
            Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::OrHash,
          type:
            Lithic::TokenizationCreatePaymentCredentialsParams::Type::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        tokenization_token:,
        # Device used for the purchase
        device:,
        mandate:,
        # Type of purchase for which payment credentials are requested
        type:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            tokenization_token: String,
            device: Lithic::TokenizationCreatePaymentCredentialsParams::Device,
            mandate:
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate,
            type:
              Lithic::TokenizationCreatePaymentCredentialsParams::Type::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Device < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TokenizationCreatePaymentCredentialsParams::Device,
              Lithic::Internal::AnyHash
            )
          end

        # Name of the application used for the purchase
        sig { returns(String) }
        attr_accessor :application_name

        # Device brand
        sig { returns(String) }
        attr_accessor :brand

        # IP address of the device
        sig { returns(String) }
        attr_accessor :ip_address

        # Device type
        sig { returns(String) }
        attr_accessor :type

        # Device used for the purchase
        sig do
          params(
            application_name: String,
            brand: String,
            ip_address: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Name of the application used for the purchase
          application_name:,
          # Device brand
          brand:,
          # IP address of the device
          ip_address:,
          # Device type
          type:
        )
        end

        sig do
          override.returns(
            {
              application_name: String,
              brand: String,
              ip_address: String,
              type: String
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
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate,
              Lithic::Internal::AnyHash
            )
          end

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
            Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::OrSymbol
          )
        end
        attr_accessor :frequency

        sig do
          returns(
            Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant
          )
        end
        attr_reader :merchant

        sig do
          params(
            merchant:
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant::OrHash
          ).void
        end
        attr_writer :merchant

        sig do
          params(
            amount: Integer,
            expires_at: Time,
            frequency:
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::OrSymbol,
            merchant:
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Purchase amount and mandate limit in USD cents
          amount:,
          # Date and time when the mandate expires, independent of the payment credentials'
          # expiration
          expires_at:,
          # Purchase frequency. RECURRING purchases require WEEKLY, MONTHLY, or YEARLY
          frequency:,
          merchant:
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              expires_at: Time,
              frequency:
                Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::OrSymbol,
              merchant:
                Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant
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
                Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :ONE_TIME,
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :MONTHLY,
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::TaggedSymbol
            )
          YEARLY =
            T.let(
              :YEARLY,
              Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Frequency::TaggedSymbol
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
                Lithic::TokenizationCreatePaymentCredentialsParams::Mandate::Merchant,
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
      end

      # Type of purchase for which payment credentials are requested
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::TokenizationCreatePaymentCredentialsParams::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTONOMOUS =
          T.let(
            :AUTONOMOUS,
            Lithic::TokenizationCreatePaymentCredentialsParams::Type::TaggedSymbol
          )
        HUMAN_IN_THE_LOOP =
          T.let(
            :HUMAN_IN_THE_LOOP,
            Lithic::TokenizationCreatePaymentCredentialsParams::Type::TaggedSymbol
          )
        RECURRING =
          T.let(
            :RECURRING,
            Lithic::TokenizationCreatePaymentCredentialsParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::TokenizationCreatePaymentCredentialsParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
