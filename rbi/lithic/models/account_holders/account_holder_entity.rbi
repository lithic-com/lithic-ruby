# typed: strong

module Lithic
  module Models
    AccountHolderEntity = AccountHolders::AccountHolderEntity

    module AccountHolders
      class AccountHolderEntity < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolders::AccountHolderEntity,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the entity
        sig { returns(String) }
        attr_accessor :token

        # Globally unique identifier for the account holder
        sig { returns(String) }
        attr_accessor :account_holder_token

        # Individual's current address
        sig { returns(Lithic::AccountHolders::AccountHolderEntity::Address) }
        attr_reader :address

        sig do
          params(
            address:
              Lithic::AccountHolders::AccountHolderEntity::Address::OrHash
          ).void
        end
        attr_writer :address

        # Individual's date of birth, as an RFC 3339 date
        sig { returns(T.nilable(String)) }
        attr_accessor :dob

        # Individual's email address
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # Individual's first name, as it appears on government-issued identity documents
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # Individual's last name, as it appears on government-issued identity documents
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # Individual's phone number, entered in E.164 format
        sig { returns(T.nilable(String)) }
        attr_accessor :phone_number

        # The status of the entity
        sig do
          returns(
            Lithic::AccountHolders::AccountHolderEntity::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The type of entity
        sig do
          returns(
            Lithic::AccountHolders::AccountHolderEntity::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Information about an entity associated with an account holder
        sig do
          params(
            token: String,
            account_holder_token: String,
            address:
              Lithic::AccountHolders::AccountHolderEntity::Address::OrHash,
            dob: T.nilable(String),
            email: T.nilable(String),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            phone_number: T.nilable(String),
            status:
              Lithic::AccountHolders::AccountHolderEntity::Status::OrSymbol,
            type: Lithic::AccountHolders::AccountHolderEntity::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the entity
          token:,
          # Globally unique identifier for the account holder
          account_holder_token:,
          # Individual's current address
          address:,
          # Individual's date of birth, as an RFC 3339 date
          dob:,
          # Individual's email address
          email:,
          # Individual's first name, as it appears on government-issued identity documents
          first_name:,
          # Individual's last name, as it appears on government-issued identity documents
          last_name:,
          # Individual's phone number, entered in E.164 format
          phone_number:,
          # The status of the entity
          status:,
          # The type of entity
          type:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              account_holder_token: String,
              address: Lithic::AccountHolders::AccountHolderEntity::Address,
              dob: T.nilable(String),
              email: T.nilable(String),
              first_name: T.nilable(String),
              last_name: T.nilable(String),
              phone_number: T.nilable(String),
              status:
                Lithic::AccountHolders::AccountHolderEntity::Status::TaggedSymbol,
              type:
                Lithic::AccountHolders::AccountHolderEntity::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Address < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AccountHolders::AccountHolderEntity::Address,
                Lithic::Internal::AnyHash
              )
            end

          # Valid deliverable address (no PO boxes).
          sig { returns(String) }
          attr_accessor :address1

          # Name of city.
          sig { returns(String) }
          attr_accessor :city

          # Valid country code. Only USA is currently supported, entered in uppercase ISO
          # 3166-1 alpha-3 three-character format.
          sig { returns(String) }
          attr_accessor :country

          # Valid postal code. Only USA ZIP codes are currently supported, entered as a
          # five-digit ZIP or nine-digit ZIP+4.
          sig { returns(String) }
          attr_accessor :postal_code

          # Valid state code. Only USA state codes are currently supported, entered in
          # uppercase ISO 3166-2 two-character format.
          sig { returns(String) }
          attr_accessor :state

          # Unit or apartment number (if applicable).
          sig { returns(T.nilable(String)) }
          attr_reader :address2

          sig { params(address2: String).void }
          attr_writer :address2

          # Individual's current address
          sig do
            params(
              address1: String,
              city: String,
              country: String,
              postal_code: String,
              state: String,
              address2: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Valid deliverable address (no PO boxes).
            address1:,
            # Name of city.
            city:,
            # Valid country code. Only USA is currently supported, entered in uppercase ISO
            # 3166-1 alpha-3 three-character format.
            country:,
            # Valid postal code. Only USA ZIP codes are currently supported, entered as a
            # five-digit ZIP or nine-digit ZIP+4.
            postal_code:,
            # Valid state code. Only USA state codes are currently supported, entered in
            # uppercase ISO 3166-2 two-character format.
            state:,
            # Unit or apartment number (if applicable).
            address2: nil
          )
          end

          sig do
            override.returns(
              {
                address1: String,
                city: String,
                country: String,
                postal_code: String,
                state: String,
                address2: String
              }
            )
          end
          def to_hash
          end
        end

        # The status of the entity
        module Status
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AccountHolders::AccountHolderEntity::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPTED =
            T.let(
              :ACCEPTED,
              Lithic::AccountHolders::AccountHolderEntity::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::AccountHolders::AccountHolderEntity::Status::TaggedSymbol
            )
          PENDING_REVIEW =
            T.let(
              :PENDING_REVIEW,
              Lithic::AccountHolders::AccountHolderEntity::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              Lithic::AccountHolders::AccountHolderEntity::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolders::AccountHolderEntity::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of entity
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AccountHolders::AccountHolderEntity::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BENEFICIAL_OWNER_INDIVIDUAL =
            T.let(
              :BENEFICIAL_OWNER_INDIVIDUAL,
              Lithic::AccountHolders::AccountHolderEntity::Type::TaggedSymbol
            )
          CONTROL_PERSON =
            T.let(
              :CONTROL_PERSON,
              Lithic::AccountHolders::AccountHolderEntity::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolders::AccountHolderEntity::Type::TaggedSymbol
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
