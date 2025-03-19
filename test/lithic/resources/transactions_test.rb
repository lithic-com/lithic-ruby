# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::TransactionsTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.transactions.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Transaction
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        acquirer_fee: Integer | nil,
        acquirer_reference_number: String | nil,
        amount: Integer,
        amounts: Lithic::Models::Transaction::Amounts,
        authorization_amount: Integer | nil,
        authorization_code: String | nil,
        avs: Lithic::Models::Transaction::Avs | nil,
        card_token: String,
        cardholder_authentication: Lithic::Models::Transaction::CardholderAuthentication | nil,
        created: Time,
        merchant: Lithic::Models::Transaction::Merchant,
        merchant_amount: Integer | nil,
        merchant_authorization_amount: Integer | nil,
        merchant_currency: String,
        network: Lithic::Models::Transaction::Network | nil,
        network_risk_score: Integer | nil,
        pos: Lithic::Models::Transaction::Pos,
        result: Lithic::Models::Transaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::Transaction::Status,
        token_info: Lithic::Models::Transaction::TokenInfo | nil,
        updated: Time,
        events: ^(Lithic::ArrayOf[Lithic::Models::Transaction::Event]) | nil
      }
    end
  end

  def test_list
    response = @lithic.transactions.list

    assert_pattern do
      response => Lithic::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Lithic::Models::Transaction
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String,
        acquirer_fee: Integer | nil,
        acquirer_reference_number: String | nil,
        amount: Integer,
        amounts: Lithic::Models::Transaction::Amounts,
        authorization_amount: Integer | nil,
        authorization_code: String | nil,
        avs: Lithic::Models::Transaction::Avs | nil,
        card_token: String,
        cardholder_authentication: Lithic::Models::Transaction::CardholderAuthentication | nil,
        created: Time,
        merchant: Lithic::Models::Transaction::Merchant,
        merchant_amount: Integer | nil,
        merchant_authorization_amount: Integer | nil,
        merchant_currency: String,
        network: Lithic::Models::Transaction::Network | nil,
        network_risk_score: Integer | nil,
        pos: Lithic::Models::Transaction::Pos,
        result: Lithic::Models::Transaction::Result,
        settled_amount: Integer,
        status: Lithic::Models::Transaction::Status,
        token_info: Lithic::Models::Transaction::TokenInfo | nil,
        updated: Time,
        events: ^(Lithic::ArrayOf[Lithic::Models::Transaction::Event]) | nil
      }
    end
  end

  def test_expire_authorization
    response = @lithic.transactions.expire_authorization("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_simulate_authorization_required_params
    response =
      @lithic.transactions.simulate_authorization(
        amount: 3831,
        descriptor: "COFFEE SHOP",
        pan: "4111111289144142"
      )

    assert_pattern do
      response => Lithic::Models::TransactionSimulateAuthorizationResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        debugging_request_id: String | nil
      }
    end
  end

  def test_simulate_authorization_advice_required_params
    response =
      @lithic.transactions.simulate_authorization_advice(
        token: "fabd829d-7f7b-4432-a8f2-07ea4889aaac",
        amount: 3831
      )

    assert_pattern do
      response => Lithic::Models::TransactionSimulateAuthorizationAdviceResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        debugging_request_id: String | nil
      }
    end
  end

  def test_simulate_clearing_required_params
    response = @lithic.transactions.simulate_clearing(token: "fabd829d-7f7b-4432-a8f2-07ea4889aaac")

    assert_pattern do
      response => Lithic::Models::TransactionSimulateClearingResponse
    end

    assert_pattern do
      response => {
        debugging_request_id: String | nil
      }
    end
  end

  def test_simulate_credit_authorization_required_params
    response =
      @lithic.transactions.simulate_credit_authorization(
        amount: 3831,
        descriptor: "COFFEE SHOP",
        pan: "4111111289144142"
      )

    assert_pattern do
      response => Lithic::Models::TransactionSimulateCreditAuthorizationResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        debugging_request_id: String | nil
      }
    end
  end

  def test_simulate_return_required_params
    response =
      @lithic.transactions.simulate_return(amount: 3831, descriptor: "COFFEE SHOP", pan: "4111111289144142")

    assert_pattern do
      response => Lithic::Models::TransactionSimulateReturnResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        debugging_request_id: String | nil
      }
    end
  end

  def test_simulate_return_reversal_required_params
    response = @lithic.transactions.simulate_return_reversal(token: "fabd829d-7f7b-4432-a8f2-07ea4889aaac")

    assert_pattern do
      response => Lithic::Models::TransactionSimulateReturnReversalResponse
    end

    assert_pattern do
      response => {
        debugging_request_id: String | nil
      }
    end
  end

  def test_simulate_void_required_params
    response = @lithic.transactions.simulate_void(token: "fabd829d-7f7b-4432-a8f2-07ea4889aaac")

    assert_pattern do
      response => Lithic::Models::TransactionSimulateVoidResponse
    end

    assert_pattern do
      response => {
        debugging_request_id: String | nil
      }
    end
  end
end
