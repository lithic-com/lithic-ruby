# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::AccountHoldersTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.account_holders.create(
        address: {
          address1: "123 Old Forest Way",
          city: "Omaha",
          country: "USA",
          postal_code: "68022",
          state: "NE"
        },
        email: "email",
        first_name: "first_name",
        kyc_exemption_type: :AUTHORIZED_USER,
        last_name: "last_name",
        phone_number: "phone_number",
        workflow: :KYC_EXEMPT
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
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::RequiredDocument]) | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.account_holders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AccountHolder
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        account_token: String | nil,
        beneficial_owner_entities: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolder::BeneficialOwnerEntity]) | nil,
        beneficial_owner_individuals: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolder::BeneficialOwnerIndividual]) | nil,
        business_account_token: String | nil,
        business_entity: Lithic::Models::AccountHolder::BusinessEntity | nil,
        control_person: Lithic::Models::AccountHolder::ControlPerson | nil,
        email: String | nil,
        exemption_type: Lithic::Models::AccountHolder::ExemptionType | nil,
        external_id: String | nil,
        individual: Lithic::Models::AccountHolder::Individual | nil,
        nature_of_business: String | nil,
        phone_number: String | nil,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::RequiredDocument]) | nil,
        status: Lithic::Models::AccountHolder::Status | nil,
        status_reasons: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolder::StatusReason]) | nil,
        user_type: Lithic::Models::AccountHolder::UserType | nil,
        verification_application: Lithic::Models::AccountHolder::VerificationApplication | nil,
        website_url: String | nil
      }
    end
  end

  def test_update
    response = @lithic.account_holders.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

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
      row => Lithic::Models::AccountHolder
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        account_token: String | nil,
        beneficial_owner_entities: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolder::BeneficialOwnerEntity]) | nil,
        beneficial_owner_individuals: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolder::BeneficialOwnerIndividual]) | nil,
        business_account_token: String | nil,
        business_entity: Lithic::Models::AccountHolder::BusinessEntity | nil,
        control_person: Lithic::Models::AccountHolder::ControlPerson | nil,
        email: String | nil,
        exemption_type: Lithic::Models::AccountHolder::ExemptionType | nil,
        external_id: String | nil,
        individual: Lithic::Models::AccountHolder::Individual | nil,
        nature_of_business: String | nil,
        phone_number: String | nil,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::RequiredDocument]) | nil,
        status: Lithic::Models::AccountHolder::Status | nil,
        status_reasons: ^(Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolder::StatusReason]) | nil,
        user_type: Lithic::Models::AccountHolder::UserType | nil,
        verification_application: Lithic::Models::AccountHolder::VerificationApplication | nil,
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
        data: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::Document]) | nil
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
      response => Lithic::Models::Document
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        document_type: Lithic::Models::Document::DocumentType,
        entity_token: String,
        required_document_uploads: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::Document::RequiredDocumentUpload])
      }
    end
  end

  def test_simulate_enrollment_document_review_required_params
    response =
      @lithic.account_holders.simulate_enrollment_document_review(
        document_upload_token: "document_upload_token",
        status: :UPLOADED
      )

    assert_pattern do
      response => Lithic::Models::Document
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        document_type: Lithic::Models::Document::DocumentType,
        entity_token: String,
        required_document_uploads: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::Document::RequiredDocumentUpload])
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
        beneficial_owner_entities: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::KYBBusinessEntity]) | nil,
        beneficial_owner_individuals: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::BeneficialOwnerIndividual]) | nil,
        business_account_token: String | nil,
        business_entity: Lithic::Models::KYBBusinessEntity | nil,
        control_person: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ControlPerson | nil,
        created: Time | nil,
        email: String | nil,
        exemption_type: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::ExemptionType | nil,
        external_id: String | nil,
        individual: Lithic::Models::AccountHolderSimulateEnrollmentReviewResponse::Individual | nil,
        nature_of_business: String | nil,
        phone_number: String | nil,
        required_documents: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::RequiredDocument]) | nil,
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
        entity_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::Models::Document
    end

    assert_pattern do
      response => {
        token: String,
        account_holder_token: String,
        document_type: Lithic::Models::Document::DocumentType,
        entity_token: String,
        required_document_uploads: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::Document::RequiredDocumentUpload])
      }
    end
  end
end
