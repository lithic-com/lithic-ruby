# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::TransactionMonitoring::QueuesTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response = @lithic.transaction_monitoring.queues.create(name: "name")

    assert_pattern do
      response => Lithic::TransactionMonitoring::Queue
    end

    assert_pattern do
      response => {
        token: String,
        case_counts: Lithic::TransactionMonitoring::Queue::CaseCounts,
        created: Time,
        description: String | nil,
        name: String,
        updated: Time
      }
    end
  end

  def test_retrieve
    response = @lithic.transaction_monitoring.queues.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::TransactionMonitoring::Queue
    end

    assert_pattern do
      response => {
        token: String,
        case_counts: Lithic::TransactionMonitoring::Queue::CaseCounts,
        created: Time,
        description: String | nil,
        name: String,
        updated: Time
      }
    end
  end

  def test_update
    response = @lithic.transaction_monitoring.queues.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::TransactionMonitoring::Queue
    end

    assert_pattern do
      response => {
        token: String,
        case_counts: Lithic::TransactionMonitoring::Queue::CaseCounts,
        created: Time,
        description: String | nil,
        name: String,
        updated: Time
      }
    end
  end

  def test_list
    response = @lithic.transaction_monitoring.queues.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::TransactionMonitoring::Queue
    end

    assert_pattern do
      row => {
        token: String,
        case_counts: Lithic::TransactionMonitoring::Queue::CaseCounts,
        created: Time,
        description: String | nil,
        name: String,
        updated: Time
      }
    end
  end

  def test_delete
    response = @lithic.transaction_monitoring.queues.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
