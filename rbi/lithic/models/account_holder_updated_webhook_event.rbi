# typed: strong

module Lithic
  module Models
    # KYB payload for an updated account holder.
    module AccountHolderUpdatedWebhookEvent
      extend Lithic::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload,
            Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload,
            Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload
          )
        end

      class KYBPayload < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload,
              Lithic::Internal::AnyHash
            )
          end

        # The token of the account_holder that was created.
        sig { returns(String) }
        attr_accessor :token

        # Original request to update the account holder.
        sig do
          returns(
            Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest
          )
        end
        attr_reader :update_request

        sig do
          params(
            update_request:
              Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::OrHash
          ).void
        end
        attr_writer :update_request

        # The type of event that occurred.
        sig do
          returns(
            T.nilable(
              Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # A user provided id that can be used to link an account holder with an external
        # system
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # Short description of the company's line of business (i.e., what does the company
        # do?).
        sig { returns(T.nilable(String)) }
        attr_reader :nature_of_business

        sig { params(nature_of_business: String).void }
        attr_writer :nature_of_business

        # Company website URL.
        sig { returns(T.nilable(String)) }
        attr_reader :website_url

        sig { params(website_url: String).void }
        attr_writer :website_url

        # KYB payload for an updated account holder.
        sig do
          params(
            token: String,
            update_request:
              Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::OrHash,
            event_type:
              Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::EventType::OrSymbol,
            external_id: String,
            nature_of_business: String,
            website_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The token of the account_holder that was created.
          token:,
          # Original request to update the account holder.
          update_request:,
          # The type of event that occurred.
          event_type: nil,
          # A user provided id that can be used to link an account holder with an external
          # system
          external_id: nil,
          # Short description of the company's line of business (i.e., what does the company
          # do?).
          nature_of_business: nil,
          # Company website URL.
          website_url: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              update_request:
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest,
              event_type:
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::EventType::TaggedSymbol,
              external_id: String,
              nature_of_business: String,
              website_url: String
            }
          )
        end
        def to_hash
        end

        class UpdateRequest < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest,
                Lithic::Internal::AnyHash
              )
            end

          # Deprecated.
          sig { returns(T.nilable(T::Array[Lithic::KYBBusinessEntity])) }
          attr_reader :beneficial_owner_entities

          sig do
            params(
              beneficial_owner_entities:
                T::Array[Lithic::KYBBusinessEntity::OrHash]
            ).void
          end
          attr_writer :beneficial_owner_entities

          # You must submit a list of all direct and indirect individuals with 25% or more
          # ownership in the company. A maximum of 4 beneficial owners can be submitted. If
          # no individual owns 25% of the company you do not need to send beneficial owner
          # information. See
          # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
          # (Section I) for more background on individuals that should be included.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual
                ]
              )
            )
          end
          attr_reader :beneficial_owner_individuals

          sig do
            params(
              beneficial_owner_individuals:
                T::Array[
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::OrHash
                ]
            ).void
          end
          attr_writer :beneficial_owner_individuals

          # Information for business for which the account is being opened and KYB is being
          # run.
          sig { returns(T.nilable(Lithic::KYBBusinessEntity)) }
          attr_reader :business_entity

          sig do
            params(business_entity: Lithic::KYBBusinessEntity::OrHash).void
          end
          attr_writer :business_entity

          # An individual with significant responsibility for managing the legal entity
          # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
          # Officer, Managing Member, General Partner, President, Vice President, or
          # Treasurer). This can be an executive, or someone who will have program-wide
          # access to the cards that Lithic will provide. In some cases, this individual
          # could also be a beneficial owner listed above. See
          # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
          # (Section II) for more background.
          sig do
            returns(
              T.nilable(
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson
              )
            )
          end
          attr_reader :control_person

          sig do
            params(
              control_person:
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::OrHash
            ).void
          end
          attr_writer :control_person

          # Original request to update the account holder.
          sig do
            params(
              beneficial_owner_entities:
                T::Array[Lithic::KYBBusinessEntity::OrHash],
              beneficial_owner_individuals:
                T::Array[
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::OrHash
                ],
              business_entity: Lithic::KYBBusinessEntity::OrHash,
              control_person:
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Deprecated.
            beneficial_owner_entities: nil,
            # You must submit a list of all direct and indirect individuals with 25% or more
            # ownership in the company. A maximum of 4 beneficial owners can be submitted. If
            # no individual owns 25% of the company you do not need to send beneficial owner
            # information. See
            # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
            # (Section I) for more background on individuals that should be included.
            beneficial_owner_individuals: nil,
            # Information for business for which the account is being opened and KYB is being
            # run.
            business_entity: nil,
            # An individual with significant responsibility for managing the legal entity
            # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
            # Officer, Managing Member, General Partner, President, Vice President, or
            # Treasurer). This can be an executive, or someone who will have program-wide
            # access to the cards that Lithic will provide. In some cases, this individual
            # could also be a beneficial owner listed above. See
            # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
            # (Section II) for more background.
            control_person: nil
          )
          end

          sig do
            override.returns(
              {
                beneficial_owner_entities: T::Array[Lithic::KYBBusinessEntity],
                beneficial_owner_individuals:
                  T::Array[
                    Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual
                  ],
                business_entity: Lithic::KYBBusinessEntity,
                control_person:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson
              }
            )
          end
          def to_hash
          end

          class BeneficialOwnerIndividual < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual,
                  Lithic::Internal::AnyHash
                )
              end

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig do
              returns(
                T.nilable(
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address
                )
              )
            end
            attr_reader :address

            sig do
              params(
                address:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address::OrHash
              ).void
            end
            attr_writer :address

            # Individual's date of birth, as an RFC 3339 date.
            sig { returns(T.nilable(String)) }
            attr_reader :dob

            sig { params(dob: String).void }
            attr_writer :dob

            # Individual's email address. If utilizing Lithic for chargeback processing, this
            # customer email address may be used to communicate dispute status and resolution.
            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            # Individual's first name, as it appears on government-issued identity documents.
            sig { returns(T.nilable(String)) }
            attr_reader :first_name

            sig { params(first_name: String).void }
            attr_writer :first_name

            # Individual's last name, as it appears on government-issued identity documents.
            sig { returns(T.nilable(String)) }
            attr_reader :last_name

            sig { params(last_name: String).void }
            attr_writer :last_name

            # Individual's phone number, entered in E.164 format.
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            sig do
              params(
                address:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address::OrHash,
                dob: String,
                email: String,
                first_name: String,
                last_name: String,
                phone_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              address: nil,
              # Individual's date of birth, as an RFC 3339 date.
              dob: nil,
              # Individual's email address. If utilizing Lithic for chargeback processing, this
              # customer email address may be used to communicate dispute status and resolution.
              email: nil,
              # Individual's first name, as it appears on government-issued identity documents.
              first_name: nil,
              # Individual's last name, as it appears on government-issued identity documents.
              last_name: nil,
              # Individual's phone number, entered in E.164 format.
              phone_number: nil
            )
            end

            sig do
              override.returns(
                {
                  address:
                    Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address,
                  dob: String,
                  email: String,
                  first_name: String,
                  government_id: String,
                  last_name: String,
                  phone_number: String
                }
              )
            end
            def to_hash
            end

            class Address < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::BeneficialOwnerIndividual::Address,
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

              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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
          end

          class ControlPerson < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson,
                  Lithic::Internal::AnyHash
                )
              end

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig do
              returns(
                T.nilable(
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address
                )
              )
            end
            attr_reader :address

            sig do
              params(
                address:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address::OrHash
              ).void
            end
            attr_writer :address

            # Individual's date of birth, as an RFC 3339 date.
            sig { returns(T.nilable(String)) }
            attr_reader :dob

            sig { params(dob: String).void }
            attr_writer :dob

            # Individual's email address. If utilizing Lithic for chargeback processing, this
            # customer email address may be used to communicate dispute status and resolution.
            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            # Individual's first name, as it appears on government-issued identity documents.
            sig { returns(T.nilable(String)) }
            attr_reader :first_name

            sig { params(first_name: String).void }
            attr_writer :first_name

            # Individual's last name, as it appears on government-issued identity documents.
            sig { returns(T.nilable(String)) }
            attr_reader :last_name

            sig { params(last_name: String).void }
            attr_writer :last_name

            # Individual's phone number, entered in E.164 format.
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            # An individual with significant responsibility for managing the legal entity
            # (e.g., a Chief Executive Officer, Chief Financial Officer, Chief Operating
            # Officer, Managing Member, General Partner, President, Vice President, or
            # Treasurer). This can be an executive, or someone who will have program-wide
            # access to the cards that Lithic will provide. In some cases, this individual
            # could also be a beneficial owner listed above. See
            # [FinCEN requirements](https://www.fincen.gov/sites/default/files/shared/CDD_Rev6.7_Sept_2017_Certificate.pdf)
            # (Section II) for more background.
            sig do
              params(
                address:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address::OrHash,
                dob: String,
                email: String,
                first_name: String,
                last_name: String,
                phone_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              address: nil,
              # Individual's date of birth, as an RFC 3339 date.
              dob: nil,
              # Individual's email address. If utilizing Lithic for chargeback processing, this
              # customer email address may be used to communicate dispute status and resolution.
              email: nil,
              # Individual's first name, as it appears on government-issued identity documents.
              first_name: nil,
              # Individual's last name, as it appears on government-issued identity documents.
              last_name: nil,
              # Individual's phone number, entered in E.164 format.
              phone_number: nil
            )
            end

            sig do
              override.returns(
                {
                  address:
                    Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address,
                  dob: String,
                  email: String,
                  first_name: String,
                  government_id: String,
                  last_name: String,
                  phone_number: String
                }
              )
            end
            def to_hash
            end

            class Address < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::UpdateRequest::ControlPerson::Address,
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

              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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
          end
        end

        # The type of event that occurred.
        module EventType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_HOLDER_UPDATED =
            T.let(
              :"account_holder.updated",
              Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolderUpdatedWebhookEvent::KYBPayload::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class KYCPayload < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload,
              Lithic::Internal::AnyHash
            )
          end

        # The token of the account_holder that was created.
        sig { returns(String) }
        attr_accessor :token

        # Original request to update the account holder.
        sig do
          returns(
            Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest
          )
        end
        attr_reader :update_request

        sig do
          params(
            update_request:
              Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::OrHash
          ).void
        end
        attr_writer :update_request

        # The type of event that occurred.
        sig do
          returns(
            T.nilable(
              Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # A user provided id that can be used to link an account holder with an external
        # system
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # KYC payload for an updated account holder.
        sig do
          params(
            token: String,
            update_request:
              Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::OrHash,
            event_type:
              Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::EventType::OrSymbol,
            external_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The token of the account_holder that was created.
          token:,
          # Original request to update the account holder.
          update_request:,
          # The type of event that occurred.
          event_type: nil,
          # A user provided id that can be used to link an account holder with an external
          # system
          external_id: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              update_request:
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest,
              event_type:
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::EventType::TaggedSymbol,
              external_id: String
            }
          )
        end
        def to_hash
        end

        class UpdateRequest < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest,
                Lithic::Internal::AnyHash
              )
            end

          # Information on the individual for whom the account is being opened and KYC is
          # being run.
          sig do
            returns(
              T.nilable(
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual
              )
            )
          end
          attr_reader :individual

          sig do
            params(
              individual:
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual::OrHash
            ).void
          end
          attr_writer :individual

          # Original request to update the account holder.
          sig do
            params(
              individual:
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Information on the individual for whom the account is being opened and KYC is
            # being run.
            individual: nil
          )
          end

          sig do
            override.returns(
              {
                individual:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual
              }
            )
          end
          def to_hash
          end

          class Individual < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual,
                  Lithic::Internal::AnyHash
                )
              end

            # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
            # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
            sig do
              returns(
                T.nilable(
                  Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address
                )
              )
            end
            attr_reader :address

            sig do
              params(
                address:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address::OrHash
              ).void
            end
            attr_writer :address

            # Individual's date of birth, as an RFC 3339 date.
            sig { returns(T.nilable(String)) }
            attr_reader :dob

            sig { params(dob: String).void }
            attr_writer :dob

            # Individual's email address. If utilizing Lithic for chargeback processing, this
            # customer email address may be used to communicate dispute status and resolution.
            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            # Individual's first name, as it appears on government-issued identity documents.
            sig { returns(T.nilable(String)) }
            attr_reader :first_name

            sig { params(first_name: String).void }
            attr_writer :first_name

            # Individual's last name, as it appears on government-issued identity documents.
            sig { returns(T.nilable(String)) }
            attr_reader :last_name

            sig { params(last_name: String).void }
            attr_writer :last_name

            # Individual's phone number, entered in E.164 format.
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            # Information on the individual for whom the account is being opened and KYC is
            # being run.
            sig do
              params(
                address:
                  Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address::OrHash,
                dob: String,
                email: String,
                first_name: String,
                last_name: String,
                phone_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
              address: nil,
              # Individual's date of birth, as an RFC 3339 date.
              dob: nil,
              # Individual's email address. If utilizing Lithic for chargeback processing, this
              # customer email address may be used to communicate dispute status and resolution.
              email: nil,
              # Individual's first name, as it appears on government-issued identity documents.
              first_name: nil,
              # Individual's last name, as it appears on government-issued identity documents.
              last_name: nil,
              # Individual's phone number, entered in E.164 format.
              phone_number: nil
            )
            end

            sig do
              override.returns(
                {
                  address:
                    Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address,
                  dob: String,
                  email: String,
                  first_name: String,
                  government_id: String,
                  last_name: String,
                  phone_number: String
                }
              )
            end
            def to_hash
            end

            class Address < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::UpdateRequest::Individual::Address,
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

              # Individual's current address - PO boxes, UPS drops, and FedEx drops are not
              # acceptable; APO/FPO are acceptable. Only USA addresses are currently supported.
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
          end
        end

        # The type of event that occurred.
        module EventType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_HOLDER_UPDATED =
            T.let(
              :"account_holder.updated",
              Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolderUpdatedWebhookEvent::KYCPayload::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class LegacyPayload < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload,
              Lithic::Internal::AnyHash
            )
          end

        # The token of the account_holder that was created.
        sig { returns(String) }
        attr_accessor :token

        # If applicable, represents the business account token associated with the
        # account_holder.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_account_token

        # When the account_holder updated event was created
        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        # If updated, the newly updated email associated with the account_holder otherwise
        # the existing email is provided.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The type of event that occurred.
        sig do
          returns(
            T.nilable(
              Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # If applicable, represents the external_id associated with the account_holder.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # If applicable, represents the account_holder's first name.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # If applicable, represents the account_holder's last name.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # If applicable, represents the account_holder's business name.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_business_name

        sig { params(legal_business_name: String).void }
        attr_writer :legal_business_name

        # If updated, the newly updated phone_number associated with the account_holder
        # otherwise the existing phone_number is provided.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Legacy payload for an updated account holder.
        sig do
          params(
            token: String,
            business_account_token: T.nilable(String),
            created: Time,
            email: String,
            event_type:
              Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload::EventType::OrSymbol,
            external_id: T.nilable(String),
            first_name: String,
            last_name: String,
            legal_business_name: String,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The token of the account_holder that was created.
          token:,
          # If applicable, represents the business account token associated with the
          # account_holder.
          business_account_token: nil,
          # When the account_holder updated event was created
          created: nil,
          # If updated, the newly updated email associated with the account_holder otherwise
          # the existing email is provided.
          email: nil,
          # The type of event that occurred.
          event_type: nil,
          # If applicable, represents the external_id associated with the account_holder.
          external_id: nil,
          # If applicable, represents the account_holder's first name.
          first_name: nil,
          # If applicable, represents the account_holder's last name.
          last_name: nil,
          # If applicable, represents the account_holder's business name.
          legal_business_name: nil,
          # If updated, the newly updated phone_number associated with the account_holder
          # otherwise the existing phone_number is provided.
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              token: String,
              business_account_token: T.nilable(String),
              created: Time,
              email: String,
              event_type:
                Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload::EventType::TaggedSymbol,
              external_id: T.nilable(String),
              first_name: String,
              last_name: String,
              legal_business_name: String,
              phone_number: String
            }
          )
        end
        def to_hash
        end

        # The type of event that occurred.
        module EventType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_HOLDER_UPDATED =
            T.let(
              :"account_holder.updated",
              Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AccountHolderUpdatedWebhookEvent::LegacyPayload::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Lithic::AccountHolderUpdatedWebhookEvent::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
