# typed: strong

module Lithic
  module Models
    module ExternalBankAccounts
      class MicroDepositCreateResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse,
              Lithic::Internal::AnyHash
            )
          end

        # A globally unique identifier for this record of an external bank account
        # association. If a program links an external bank account to more than one
        # end-user or to both the program and the end-user, then Lithic will return each
        # record of the association
        sig { returns(String) }
        attr_accessor :token

        # The country that the bank account is located in using ISO 3166-1. We will only
        # accept USA bank accounts e.g., USA
        sig { returns(String) }
        attr_accessor :country

        # An ISO 8601 string representing when this funding source was added to the Lithic
        # account.
        sig { returns(Time) }
        attr_accessor :created

        # currency of the external account 3-character alphabetic ISO 4217 code
        sig { returns(String) }
        attr_accessor :currency

        # The last 4 digits of the bank account. Derived by Lithic from the account number
        # passed
        sig { returns(String) }
        attr_accessor :last_four

        # Legal Name of the business or individual who owns the external account. This
        # will appear in statements
        sig { returns(String) }
        attr_accessor :owner

        # Owner Type
        sig do
          returns(
            Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType::TaggedSymbol
          )
        end
        attr_accessor :owner_type

        # Routing Number
        sig { returns(String) }
        attr_accessor :routing_number

        # Account State
        sig do
          returns(
            Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State::TaggedSymbol
          )
        end
        attr_accessor :state

        # Account Type
        sig do
          returns(
            Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The number of attempts at verification
        sig { returns(Integer) }
        attr_accessor :verification_attempts

        # Verification Method
        sig do
          returns(
            Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::TaggedSymbol
          )
        end
        attr_accessor :verification_method

        # Verification State
        sig do
          returns(
            Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::TaggedSymbol
          )
        end
        attr_accessor :verification_state

        # Indicates which Lithic account the external account is associated with. For
        # external accounts that are associated with the program, account_token field
        # returned will be null
        sig { returns(T.nilable(String)) }
        attr_accessor :account_token

        # Address
        sig { returns(T.nilable(Lithic::ExternalBankAccountAddress)) }
        attr_reader :address

        sig do
          params(
            address: T.nilable(Lithic::ExternalBankAccountAddress::OrHash)
          ).void
        end
        attr_writer :address

        # Optional field that helps identify bank accounts in receipts
        sig { returns(T.nilable(String)) }
        attr_accessor :company_id

        # Date of Birth of the Individual that owns the external bank account
        sig { returns(T.nilable(Date)) }
        attr_accessor :dob

        # Doing Business As
        sig { returns(T.nilable(String)) }
        attr_accessor :doing_business_as

        # The financial account token of the operating account to fund the micro deposits
        sig { returns(T.nilable(String)) }
        attr_accessor :financial_account_token

        # The nickname for this External Bank Account
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # User Defined ID
        sig { returns(T.nilable(String)) }
        attr_accessor :user_defined_id

        # Optional free text description of the reason for the failed verification. For
        # ACH micro-deposits returned, this field will display the reason return code sent
        # by the ACH network
        sig { returns(T.nilable(String)) }
        attr_accessor :verification_failed_reason

        sig do
          params(
            token: String,
            country: String,
            created: Time,
            currency: String,
            last_four: String,
            owner: String,
            owner_type:
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType::OrSymbol,
            routing_number: String,
            state:
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State::OrSymbol,
            type:
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type::OrSymbol,
            verification_attempts: Integer,
            verification_method:
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::OrSymbol,
            verification_state:
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::OrSymbol,
            account_token: T.nilable(String),
            address: T.nilable(Lithic::ExternalBankAccountAddress::OrHash),
            company_id: T.nilable(String),
            dob: T.nilable(Date),
            doing_business_as: T.nilable(String),
            financial_account_token: T.nilable(String),
            name: T.nilable(String),
            user_defined_id: T.nilable(String),
            verification_failed_reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A globally unique identifier for this record of an external bank account
          # association. If a program links an external bank account to more than one
          # end-user or to both the program and the end-user, then Lithic will return each
          # record of the association
          token:,
          # The country that the bank account is located in using ISO 3166-1. We will only
          # accept USA bank accounts e.g., USA
          country:,
          # An ISO 8601 string representing when this funding source was added to the Lithic
          # account.
          created:,
          # currency of the external account 3-character alphabetic ISO 4217 code
          currency:,
          # The last 4 digits of the bank account. Derived by Lithic from the account number
          # passed
          last_four:,
          # Legal Name of the business or individual who owns the external account. This
          # will appear in statements
          owner:,
          # Owner Type
          owner_type:,
          # Routing Number
          routing_number:,
          # Account State
          state:,
          # Account Type
          type:,
          # The number of attempts at verification
          verification_attempts:,
          # Verification Method
          verification_method:,
          # Verification State
          verification_state:,
          # Indicates which Lithic account the external account is associated with. For
          # external accounts that are associated with the program, account_token field
          # returned will be null
          account_token: nil,
          # Address
          address: nil,
          # Optional field that helps identify bank accounts in receipts
          company_id: nil,
          # Date of Birth of the Individual that owns the external bank account
          dob: nil,
          # Doing Business As
          doing_business_as: nil,
          # The financial account token of the operating account to fund the micro deposits
          financial_account_token: nil,
          # The nickname for this External Bank Account
          name: nil,
          # User Defined ID
          user_defined_id: nil,
          # Optional free text description of the reason for the failed verification. For
          # ACH micro-deposits returned, this field will display the reason return code sent
          # by the ACH network
          verification_failed_reason: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              country: String,
              created: Time,
              currency: String,
              last_four: String,
              owner: String,
              owner_type:
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType::TaggedSymbol,
              routing_number: String,
              state:
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State::TaggedSymbol,
              type:
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type::TaggedSymbol,
              verification_attempts: Integer,
              verification_method:
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::TaggedSymbol,
              verification_state:
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::TaggedSymbol,
              account_token: T.nilable(String),
              address: T.nilable(Lithic::ExternalBankAccountAddress),
              company_id: T.nilable(String),
              dob: T.nilable(Date),
              doing_business_as: T.nilable(String),
              financial_account_token: T.nilable(String),
              name: T.nilable(String),
              user_defined_id: T.nilable(String),
              verification_failed_reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Owner Type
        module OwnerType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :BUSINESS,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :INDIVIDUAL,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::OwnerType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Account State
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(
              :ENABLED,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State::TaggedSymbol
            )
          CLOSED =
            T.let(
              :CLOSED,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State::TaggedSymbol
            )
          PAUSED =
            T.let(
              :PAUSED,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Account Type
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHECKING =
            T.let(
              :CHECKING,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type::TaggedSymbol
            )
          SAVINGS =
            T.let(
              :SAVINGS,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Verification Method
        module VerificationMethod
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANUAL =
            T.let(
              :MANUAL,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::TaggedSymbol
            )
          MICRO_DEPOSIT =
            T.let(
              :MICRO_DEPOSIT,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::TaggedSymbol
            )
          PLAID =
            T.let(
              :PLAID,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::TaggedSymbol
            )
          PRENOTE =
            T.let(
              :PRENOTE,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Verification State
        module VerificationState
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::TaggedSymbol
            )
          ENABLED =
            T.let(
              :ENABLED,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::TaggedSymbol
            )
          FAILED_VERIFICATION =
            T.let(
              :FAILED_VERIFICATION,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::TaggedSymbol
            )
          INSUFFICIENT_FUNDS =
            T.let(
              :INSUFFICIENT_FUNDS,
              Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse::VerificationState::TaggedSymbol
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
