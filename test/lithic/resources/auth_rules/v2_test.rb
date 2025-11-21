# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::AuthRules::V2Test < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.auth_rules.v2.create(
        card_tokens: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"],
        parameters: {conditions: [{attribute: :MCC, operation: :IS_ONE_OF, value: "string"}]},
        type: :CONDITIONAL_BLOCK
      )

    assert_pattern do
      response => Lithic::AuthRules::AuthRule
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        business_account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::AuthRules::AuthRule::CurrentVersion | nil,
        draft_version: Lithic::AuthRules::AuthRule::DraftVersion | nil,
        event_stream: Lithic::AuthRules::AuthRule::EventStream,
        lithic_managed: Lithic::Internal::Type::Boolean,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::AuthRules::AuthRule::State,
        type: Lithic::AuthRules::AuthRule::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.auth_rules.v2.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::AuthRules::AuthRule
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        business_account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::AuthRules::AuthRule::CurrentVersion | nil,
        draft_version: Lithic::AuthRules::AuthRule::DraftVersion | nil,
        event_stream: Lithic::AuthRules::AuthRule::EventStream,
        lithic_managed: Lithic::Internal::Type::Boolean,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::AuthRules::AuthRule::State,
        type: Lithic::AuthRules::AuthRule::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update
    response = @lithic.auth_rules.v2.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::AuthRules::AuthRule
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        business_account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::AuthRules::AuthRule::CurrentVersion | nil,
        draft_version: Lithic::AuthRules::AuthRule::DraftVersion | nil,
        event_stream: Lithic::AuthRules::AuthRule::EventStream,
        lithic_managed: Lithic::Internal::Type::Boolean,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::AuthRules::AuthRule::State,
        type: Lithic::AuthRules::AuthRule::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list
    response = @lithic.auth_rules.v2.list

    assert_pattern do
      response => Lithic::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::AuthRules::AuthRule
    end

    assert_pattern do
      row => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        business_account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::AuthRules::AuthRule::CurrentVersion | nil,
        draft_version: Lithic::AuthRules::AuthRule::DraftVersion | nil,
        event_stream: Lithic::AuthRules::AuthRule::EventStream,
        lithic_managed: Lithic::Internal::Type::Boolean,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::AuthRules::AuthRule::State,
        type: Lithic::AuthRules::AuthRule::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete
    response = @lithic.auth_rules.v2.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_draft
    response = @lithic.auth_rules.v2.draft("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::AuthRules::AuthRule
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        business_account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::AuthRules::AuthRule::CurrentVersion | nil,
        draft_version: Lithic::AuthRules::AuthRule::DraftVersion | nil,
        event_stream: Lithic::AuthRules::AuthRule::EventStream,
        lithic_managed: Lithic::Internal::Type::Boolean,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::AuthRules::AuthRule::State,
        type: Lithic::AuthRules::AuthRule::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_promote
    response = @lithic.auth_rules.v2.promote("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::AuthRules::AuthRule
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        business_account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::AuthRules::AuthRule::CurrentVersion | nil,
        draft_version: Lithic::AuthRules::AuthRule::DraftVersion | nil,
        event_stream: Lithic::AuthRules::AuthRule::EventStream,
        lithic_managed: Lithic::Internal::Type::Boolean,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::AuthRules::AuthRule::State,
        type: Lithic::AuthRules::AuthRule::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_retrieve_features
    response = @lithic.auth_rules.v2.retrieve_features("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AuthRules::V2RetrieveFeaturesResponse
    end

    assert_pattern do
      response => {
        evaluated: Time,
        features: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature])
      }
    end
  end

  def test_retrieve_report_required_params
    response =
      @lithic.auth_rules.v2.retrieve_report(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        begin_: "2019-12-27",
        end_: "2019-12-27"
      )

    assert_pattern do
      response => Lithic::Models::AuthRules::V2RetrieveReportResponse
    end

    assert_pattern do
      response => {
        auth_rule_token: String,
        begin_: Date,
        daily_statistics: ^(Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic]),
        end_: Date
      }
    end
  end
end
