# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::TransactionMonitoring::CasesTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.transaction_monitoring.cases.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::TransactionMonitoring::MonitoringCase
    end

    assert_pattern do
      response => {
        token: String,
        assignee: String | nil,
        collection_stopped: Time | nil,
        created: Time,
        entity: Lithic::TransactionMonitoring::CaseEntity | nil,
        pending_transactions: Lithic::Internal::Type::Boolean,
        priority: Lithic::TransactionMonitoring::CasePriority,
        queue_token: String,
        resolution: Lithic::TransactionMonitoring::ResolutionOutcome | nil,
        resolution_notes: String | nil,
        resolved: Time | nil,
        rule_token: String | nil,
        sla_deadline: Time | nil,
        status: Lithic::TransactionMonitoring::CaseStatus,
        tags: ^(Lithic::Internal::Type::HashOf[String]),
        title: String | nil,
        updated: Time
      }
    end
  end

  def test_update
    response = @lithic.transaction_monitoring.cases.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::TransactionMonitoring::MonitoringCase
    end

    assert_pattern do
      response => {
        token: String,
        assignee: String | nil,
        collection_stopped: Time | nil,
        created: Time,
        entity: Lithic::TransactionMonitoring::CaseEntity | nil,
        pending_transactions: Lithic::Internal::Type::Boolean,
        priority: Lithic::TransactionMonitoring::CasePriority,
        queue_token: String,
        resolution: Lithic::TransactionMonitoring::ResolutionOutcome | nil,
        resolution_notes: String | nil,
        resolved: Time | nil,
        rule_token: String | nil,
        sla_deadline: Time | nil,
        status: Lithic::TransactionMonitoring::CaseStatus,
        tags: ^(Lithic::Internal::Type::HashOf[String]),
        title: String | nil,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.transaction_monitoring.cases.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::TransactionMonitoring::MonitoringCase
    end

    assert_pattern do
      row => {
        token: String,
        assignee: String | nil,
        collection_stopped: Time | nil,
        created: Time,
        entity: Lithic::TransactionMonitoring::CaseEntity | nil,
        pending_transactions: Lithic::Internal::Type::Boolean,
        priority: Lithic::TransactionMonitoring::CasePriority,
        queue_token: String,
        resolution: Lithic::TransactionMonitoring::ResolutionOutcome | nil,
        resolution_notes: String | nil,
        resolved: Time | nil,
        rule_token: String | nil,
        sla_deadline: Time | nil,
        status: Lithic::TransactionMonitoring::CaseStatus,
        tags: ^(Lithic::Internal::Type::HashOf[String]),
        title: String | nil,
        updated: Time
      }
    end
  end

  def test_list_activity
    response = @lithic.transaction_monitoring.cases.list_activity("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::TransactionMonitoring::CaseActivityEntry
    end

    assert_pattern do
      row => {
        token: String,
        actor_token: String | nil,
        created: Time,
        entry_type: Lithic::TransactionMonitoring::CaseActivityType,
        new_value: String | nil,
        previous_value: String | nil
      }
    end
  end

  def test_list_transactions
    response = @lithic.transaction_monitoring.cases.list_transactions("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::TransactionMonitoring::CaseTransaction
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String,
        added_at: Time,
        card_token: String,
        transaction_created_at: Time
      }
    end
  end

  def test_retrieve_cards
    response = @lithic.transaction_monitoring.cases.retrieve_cards("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(Lithic::Internal::Type::ArrayOf[Lithic::TransactionMonitoring::CaseCard])
    end
  end
end
