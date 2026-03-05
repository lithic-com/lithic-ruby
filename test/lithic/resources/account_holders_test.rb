# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::AccountHoldersTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.account_holders.create(
        body: {
          beneficial_owner_individuals: [
            {
              address: {
                address1: "300 Normal Forest Way",
                city: "Portland",
                country: "USA",
                postal_code: "90210",
                state: "OR"
              },
              dob: "1991-03-08T08:00:00Z",
              email: "tim@left-earth.com",
              first_name: "Timmy",
              government_id: "211-23-1412",
              last_name: "Turner"
            }
          ],
          business_entity: {
            address: {
              address1: "123 Old Forest Way",
              city: "Omaha",
              country: "USA",
              postal_code: "61022",
              state: "NE"
            },
            government_id: "12-3456789",
            legal_business_name: "Busy Business, Inc.",
            phone_numbers: ["+15555555555"]
          },
          control_person: {
            address: {
              address1: "451 New Forest Way",
              city: "Springfield",
              country: "USA",
              postal_code: "68022",
              state: "IL"
            },
            dob: "1991-03-08T08:00:00Z",
            email: "tom@middle-pluto.com",
            first_name: "Tom",
            government_id: "111-23-1412",
            last_name: "Timothy"
          },
          nature_of_business: "Software company selling solutions to the restaurant industry",
          tos_timestamp: "2022-03-08T08:00:00Z",
          workflow: :KYB_BYO
        }
      )

    assert_pattern do
      response => Lithic::Models::AccountHolderCreateResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        status: Lithic::Models::AccountHolderCreateResponse::Status,
        status_reasons: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolderCreateResponse::StatusReason]),
        created: Time | nil,
        external_id: String | nil,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument]) | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.account_holders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::AccountHolder
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        account_token: String | nil,
        beneficial_owner_individuals: ^(Lithic::Internal::Type::ArrayOf[Lithic::AccountHolder::BeneficialOwnerIndividual]) | nil,
        business_account_token: String | nil,
        business_entity: Lithic::AccountHolder::BusinessEntity | nil,
        control_person: Lithic::AccountHolder::ControlPerson | nil,
        email: String | nil,
        exemption_type: Lithic::AccountHolder::ExemptionType | nil,
        external_id: String | nil,
        individual: Lithic::AccountHolder::Individual | nil,
        naics_code: String | nil,
        nature_of_business: String | nil,
        phone_number: String | nil,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument]) | nil,
        status: Lithic::AccountHolder::Status | nil,
        status_reasons: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::AccountHolder::StatusReason]) | nil,
        user_type: Lithic::AccountHolder::UserType | nil,
        verification_application: Lithic::AccountHolder::VerificationApplication | nil,
        website_url: String | nil
      }
    end
  end

  def test_update_required_params
    response = @lithic.account_holders.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", body: {})

    assert_pattern do
      response => Lithic::Models::AccountHolderUpdateResponse
    end

    assert_pattern do
      case response
      in Lithic::Models::AccountHolderUpdateResponse::KYBKYCPatchResponse
      in Lithic::Models::AccountHolderUpdateResponse::PatchResponse
      end
    end
  end

  def test_list
    response = @lithic.account_holders.list

    assert_pattern do
      response => Lithic::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::AccountHolder
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        account_token: String | nil,
        beneficial_owner_individuals: ^(Lithic::Internal::Type::ArrayOf[Lithic::AccountHolder::BeneficialOwnerIndividual]) | nil,
        business_account_token: String | nil,
        business_entity: Lithic::AccountHolder::BusinessEntity | nil,
        control_person: Lithic::AccountHolder::ControlPerson | nil,
        email: String | nil,
        exemption_type: Lithic::AccountHolder::ExemptionType | nil,
        external_id: String | nil,
        individual: Lithic::AccountHolder::Individual | nil,
        naics_code: String | nil,
        nature_of_business: String | nil,
        phone_number: String | nil,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument]) | nil,
        status: Lithic::AccountHolder::Status | nil,
        status_reasons: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::AccountHolder::StatusReason]) | nil,
        user_type: Lithic::AccountHolder::UserType | nil,
        verification_application: Lithic::AccountHolder::VerificationApplication | nil,
        website_url: String | nil
      }
    end
  end

  def test_list_documents
    response = @lithic.account_holders.list_documents("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AccountHolderListDocumentsResponse
    end

    assert_pattern do
      response => {
        data: ^(Lithic::Internal::Type::ArrayOf[Lithic::Document]) | nil
      }
    end
  end

  def test_retrieve_document_required_params
    response =
      @lithic.account_holders.retrieve_document(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        account_holder_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Document
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        document_type: Lithic::Document::DocumentType,
        entity_token: String,
        required_document_uploads: ^(Lithic::Internal::Type::ArrayOf[Lithic::Document::RequiredDocumentUpload])
      }
    end
  end

  def test_simulate_enrollment_document_review_required_params
    response =
      @lithic.account_holders.simulate_enrollment_document_review(
        document_upload_token: "b11cd67b-0a52-4180-8365-314f3def5426",
        status: :UPLOADED
      )

    assert_pattern do
      response => Lithic::Document
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        document_type: Lithic::Document::DocumentType,
        entity_token: String,
        required_document_uploads: ^(Lithic::Internal::Type::ArrayOf[Lithic::Document::RequiredDocumentUpload])
      }
    end
  end

  def test_simulate_enrollment_review
    response = @lithic.account_holders.simulate_enrollment_review

    assert_pattern do
      response => Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        account_token: String | nil,
        beneficial_owner_individuals: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual]) | nil,
        business_account_token: String | nil,
        business_entity: Lithic::KYBBusinessEntity | nil,
        control_person: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson | nil,
        created: Time | nil,
        email: String | nil,
        exemption_type: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType | nil,
        external_id: String | nil,
        individual: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual | nil,
        naics_code: String | nil,
        nature_of_business: String | nil,
        phone_number: String | nil,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument]) | nil,
        status: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Status | nil,
        status_reasons: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::StatusReason]) | nil,
        user_type: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::UserType | nil,
        verification_application: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::VerificationApplication | nil,
        website_url: String | nil
      }
    end
  end

  def test_upload_document_required_params
    response =
      @lithic.account_holders.upload_document(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        document_type: :EIN_LETTER,
        entity_token: "83cf25ae-c14f-4d10-9fa2-0119f36c7286"
      )

    assert_pattern do
      response => Lithic::Document
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        document_type: Lithic::Document::DocumentType,
        entity_token: String,
        required_document_uploads: ^(Lithic::Internal::Type::ArrayOf[Lithic::Document::RequiredDocumentUpload])
      }
    end
  end
end
