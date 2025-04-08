# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::CardsTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response = @lithic.cards.create(type: :VIRTUAL)

    assert_pattern do
      response => Lithic::Models::Card
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.cards.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Card
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end

  def test_update
    response = @lithic.cards.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Card
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end

  def test_list
    response = @lithic.cards.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::Models::Card
    end

    assert_pattern do
      row => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end

  def test_convert_physical_required_params
    response =
      @lithic.cards.convert_physical(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        shipping_address: {
          address1: "5 Broad Street",
          city: "NEW YORK",
          country: "USA",
          first_name: "Janet",
          last_name: "Yellen",
          postal_code: "10001",
          state: "NY"
        }
      )

    assert_pattern do
      response => Lithic::Models::Card
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end

  def test_embed_required_params
    response = @lithic.cards.embed(embed_request: "embed_request", hmac: "hmac")

    assert_pattern do
      response => String
    end
  end

  def test_provision
    response = @lithic.cards.provision("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::CardProvisionResponse
    end

    assert_pattern do
      response => {
        provisioning_payload: String | nil
      }
    end
  end

  def test_reissue
    response = @lithic.cards.reissue("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::Card
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end

  def test_renew_required_params
    response =
      @lithic.cards.renew(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        shipping_address: {
          address1: "5 Broad Street",
          city: "NEW YORK",
          country: "USA",
          first_name: "Janet",
          last_name: "Yellen",
          postal_code: "10001",
          state: "NY"
        }
      )

    assert_pattern do
      response => Lithic::Models::Card
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end

  def test_retrieve_spend_limits
    response = @lithic.cards.retrieve_spend_limits("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::CardSpendLimits
    end

    assert_pattern do
      response => {
        available_spend_limit: Lithic::Models::CardSpendLimits::AvailableSpendLimit,
        spend_limit: Lithic::Models::CardSpendLimits::SpendLimit | nil,
        spend_velocity: Lithic::Models::CardSpendLimits::SpendVelocity | nil
      }
    end
  end

  def test_search_by_pan_required_params
    response = @lithic.cards.search_by_pan(pan: "4111111289144142")

    assert_pattern do
      response => Lithic::Models::Card
    end

    assert_pattern do
      response => {
        token: String,
        account_token: String,
        card_program_token: String,
        created: Time,
        funding: Lithic::Models::Card::Funding,
        last_four: String,
        pin_status: Lithic::Models::Card::PinStatus,
        spend_limit: Integer,
        spend_limit_duration: Lithic::Models::SpendLimitDuration,
        state: Lithic::Models::Card::State,
        type: Lithic::Models::Card::Type,
        auth_rule_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        cardholder_currency: String | nil,
        cvv: String | nil,
        digital_card_art_token: String | nil,
        exp_month: String | nil,
        exp_year: String | nil,
        hostname: String | nil,
        memo: String | nil,
        pan: String | nil,
        pending_commands: ^(Lithic::Internal::Type::ArrayOf[String]) | nil,
        product_id: String | nil,
        replacement_for: String | nil
      }
    end
  end
end
