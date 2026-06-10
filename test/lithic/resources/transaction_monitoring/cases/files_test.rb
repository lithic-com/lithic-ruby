# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::TransactionMonitoring::Cases::FilesTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.transaction_monitoring.cases.files.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", name: "name")

    assert_pattern do
      response => Lithic::TransactionMonitoring::Cases::CaseFile
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        download_url: String | nil,
        download_url_expires: Time | nil,
        failure_reason: String | nil,
        mime_type: String | nil,
        name: String,
        size_bytes: Integer | nil,
        status: Lithic::TransactionMonitoring::Cases::FileStatus,
        updated: Time,
        upload_constraints: Lithic::TransactionMonitoring::Cases::UploadConstraints | nil,
        upload_url: String | nil,
        upload_url_expires: Time | nil
      }
    end
  end

  def test_retrieve_required_params
    response =
      @lithic.transaction_monitoring.cases.files.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        case_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Lithic::TransactionMonitoring::Cases::CaseFile
    end

    assert_pattern do
      response => {
        token: String,
        created: Time,
        download_url: String | nil,
        download_url_expires: Time | nil,
        failure_reason: String | nil,
        mime_type: String | nil,
        name: String,
        size_bytes: Integer | nil,
        status: Lithic::TransactionMonitoring::Cases::FileStatus,
        updated: Time,
        upload_constraints: Lithic::TransactionMonitoring::Cases::UploadConstraints | nil,
        upload_url: String | nil,
        upload_url_expires: Time | nil
      }
    end
  end

  def test_list
    response = @lithic.transaction_monitoring.cases.files.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::TransactionMonitoring::Cases::CaseFile
    end

    assert_pattern do
      row => {
        token: String,
        created: Time,
        download_url: String | nil,
        download_url_expires: Time | nil,
        failure_reason: String | nil,
        mime_type: String | nil,
        name: String,
        size_bytes: Integer | nil,
        status: Lithic::TransactionMonitoring::Cases::FileStatus,
        updated: Time,
        upload_constraints: Lithic::TransactionMonitoring::Cases::UploadConstraints | nil,
        upload_url: String | nil,
        upload_url_expires: Time | nil
      }
    end
  end

  def test_delete_required_params
    response =
      @lithic.transaction_monitoring.cases.files.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        case_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
