# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::DisputesTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.disputes.create(
        amount: 10_000,
        reason: :FRAUD_CARD_PRESENT,
        transaction_token: "12345624-aa69-4cbc-a946-30d90181b621"
      )

    assert_pattern do
      response => Lithic::Dispute
    end

    assert_pattern do
      response => {
        token: String,
        amount: Integer,
        arbitration_date: Time | nil,
        created: Time,
        customer_filed_date: Time | nil,
        customer_note: String | nil,
        network_claim_ids: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        network_filed_date: Time | nil,
        network_reason_code: String | nil,
        prearbitration_date: Time | nil,
        primary_claim_id: String | nil,
        reason: Lithic::Dispute::Reason,
        representment_date: Time | nil,
        resolution_date: Time | nil,
        resolution_note: String | nil,
        resolution_reason: Lithic::Dispute::ResolutionReason | nil,
        status: Lithic::Dispute::Status,
        transaction_token: String
      }
    end
  end

  def test_retrieve
    response = @lithic.disputes.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Dispute
    end

    assert_pattern do
      response => {
        token: String,
        amount: Integer,
        arbitration_date: Time | nil,
        created: Time,
        customer_filed_date: Time | nil,
        customer_note: String | nil,
        network_claim_ids: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        network_filed_date: Time | nil,
        network_reason_code: String | nil,
        prearbitration_date: Time | nil,
        primary_claim_id: String | nil,
        reason: Lithic::Dispute::Reason,
        representment_date: Time | nil,
        resolution_date: Time | nil,
        resolution_note: String | nil,
        resolution_reason: Lithic::Dispute::ResolutionReason | nil,
        status: Lithic::Dispute::Status,
        transaction_token: String
      }
    end
  end

  def test_update
    response = @lithic.disputes.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Dispute
    end

    assert_pattern do
      response => {
        token: String,
        amount: Integer,
        arbitration_date: Time | nil,
        created: Time,
        customer_filed_date: Time | nil,
        customer_note: String | nil,
        network_claim_ids: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        network_filed_date: Time | nil,
        network_reason_code: String | nil,
        prearbitration_date: Time | nil,
        primary_claim_id: String | nil,
        reason: Lithic::Dispute::Reason,
        representment_date: Time | nil,
        resolution_date: Time | nil,
        resolution_note: String | nil,
        resolution_reason: Lithic::Dispute::ResolutionReason | nil,
        status: Lithic::Dispute::Status,
        transaction_token: String
      }
    end
  end

  def test_list
    response = @lithic.disputes.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Dispute
    end

    assert_pattern do
      row => {
        token: String,
        amount: Integer,
        arbitration_date: Time | nil,
        created: Time,
        customer_filed_date: Time | nil,
        customer_note: String | nil,
        network_claim_ids: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        network_filed_date: Time | nil,
        network_reason_code: String | nil,
        prearbitration_date: Time | nil,
        primary_claim_id: String | nil,
        reason: Lithic::Dispute::Reason,
        representment_date: Time | nil,
        resolution_date: Time | nil,
        resolution_note: String | nil,
        resolution_reason: Lithic::Dispute::ResolutionReason | nil,
        status: Lithic::Dispute::Status,
        transaction_token: String
      }
    end
  end

  def test_delete
    response = @lithic.disputes.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Dispute
    end

    assert_pattern do
      response => {
        token: String,
        amount: Integer,
        arbitration_date: Time | nil,
        created: Time,
        customer_filed_date: Time | nil,
        customer_note: String | nil,
        network_claim_ids: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        network_filed_date: Time | nil,
        network_reason_code: String | nil,
        prearbitration_date: Time | nil,
        primary_claim_id: String | nil,
        reason: Lithic::Dispute::Reason,
        representment_date: Time | nil,
        resolution_date: Time | nil,
        resolution_note: String | nil,
        resolution_reason: Lithic::Dispute::ResolutionReason | nil,
        status: Lithic::Dispute::Status,
        transaction_token: String
      }
    end
  end

  def test_delete_evidence_required_params
    response =
      @lithic.disputes.delete_evidence(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        dispute_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::DisputeEvidence
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        dispute_token: String,
        upload_status: Lithic::DisputeEvidence::UploadStatus,
        download_url: String | nil,
        filename: String | nil,
        upload_url: String | nil
      }
    end
  end

  def test_initiate_evidence_upload
    response = @lithic.disputes.initiate_evidence_upload("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::DisputeEvidence
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        dispute_token: String,
        upload_status: Lithic::DisputeEvidence::UploadStatus,
        download_url: String | nil,
        filename: String | nil,
        upload_url: String | nil
      }
    end
  end

  def test_list_evidences
    response = @lithic.disputes.list_evidences("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::DisputeEvidence
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        dispute_token: String,
        upload_status: Lithic::DisputeEvidence::UploadStatus,
        download_url: String | nil,
        filename: String | nil,
        upload_url: String | nil
      }
    end
  end

  def test_retrieve_evidence_required_params
    response =
      @lithic.disputes.retrieve_evidence(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        dispute_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::DisputeEvidence
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        dispute_token: String,
        upload_status: Lithic::DisputeEvidence::UploadStatus,
        download_url: String | nil,
        filename: String | nil,
        upload_url: String | nil
      }
    end
  end
end
