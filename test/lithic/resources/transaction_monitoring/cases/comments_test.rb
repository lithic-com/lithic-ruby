# frozen_string_literal: true

require_relative "../../../test_helper"

class Lithic::Test::Resources::TransactionMonitoring::Cases::CommentsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.transaction_monitoring.cases.comments.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        comment: "comment"
      )

    assert_pattern do
      response => Lithic::TransactionMonitoring::CaseActivityEntry
    end

    assert_pattern do
      response => {
        token: String,
        actor_token: String | nil,
        created: Time,
        entry_type: Lithic::TransactionMonitoring::CaseActivityType,
        new_value: String | nil,
        previous_value: String | nil
      }
    end
  end

  def test_update_required_params
    response =
      @lithic.transaction_monitoring.cases.comments.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        case_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        comment: "comment"
      )

    assert_pattern do
      response => Lithic::TransactionMonitoring::CaseActivityEntry
    end

    assert_pattern do
      response => {
        token: String,
        actor_token: String | nil,
        created: Time,
        entry_type: Lithic::TransactionMonitoring::CaseActivityType,
        new_value: String | nil,
        previous_value: String | nil
      }
    end
  end

  def test_delete_required_params
    response =
      @lithic.transaction_monitoring.cases.comments.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        case_token: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
