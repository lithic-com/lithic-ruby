# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::AuthRules::V2Test < Lithic::Test::ResourceTest
  def test_create_required_params
    response = @lithic.auth_rules.v2.create(account_tokens: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])

    assert_pattern do
      response => Lithic::Models::AuthRules::V2CreateResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::Models::AuthRules::V2CreateResponse::CurrentVersion | nil,
        draft_version: Lithic::Models::AuthRules::V2CreateResponse::DraftVersion | nil,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::Models::AuthRules::V2CreateResponse::State,
        type: Lithic::Models::AuthRules::V2CreateResponse::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_retrieve
    response = @lithic.auth_rules.v2.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AuthRules::V2RetrieveResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::Models::AuthRules::V2RetrieveResponse::CurrentVersion | nil,
        draft_version: Lithic::Models::AuthRules::V2RetrieveResponse::DraftVersion | nil,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::Models::AuthRules::V2RetrieveResponse::State,
        type: Lithic::Models::AuthRules::V2RetrieveResponse::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update
    response = @lithic.auth_rules.v2.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AuthRules::V2UpdateResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::Models::AuthRules::V2UpdateResponse::CurrentVersion | nil,
        draft_version: Lithic::Models::AuthRules::V2UpdateResponse::DraftVersion | nil,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::Models::AuthRules::V2UpdateResponse::State,
        type: Lithic::Models::AuthRules::V2UpdateResponse::Type,
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
      row => Lithic::Models::AuthRules::V2ListResponse
    end

    assert_pattern do
      row => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::Models::AuthRules::V2ListResponse::CurrentVersion | nil,
        draft_version: Lithic::Models::AuthRules::V2ListResponse::DraftVersion | nil,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::Models::AuthRules::V2ListResponse::State,
        type: Lithic::Models::AuthRules::V2ListResponse::Type,
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

  def test_apply_required_params
    response =
      @lithic.auth_rules.v2.apply(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        account_tokens: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
      )

    assert_pattern do
      response => Lithic::Models::AuthRules::V2ApplyResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::Models::AuthRules::V2ApplyResponse::CurrentVersion | nil,
        draft_version: Lithic::Models::AuthRules::V2ApplyResponse::DraftVersion | nil,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::Models::AuthRules::V2ApplyResponse::State,
        type: Lithic::Models::AuthRules::V2ApplyResponse::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_draft
    response = @lithic.auth_rules.v2.draft("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AuthRules::V2DraftResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::Models::AuthRules::V2DraftResponse::CurrentVersion | nil,
        draft_version: Lithic::Models::AuthRules::V2DraftResponse::DraftVersion | nil,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::Models::AuthRules::V2DraftResponse::State,
        type: Lithic::Models::AuthRules::V2DraftResponse::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_promote
    response = @lithic.auth_rules.v2.promote("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AuthRules::V2PromoteResponse
    end

    assert_pattern do
      response => {
        token: String,
        account_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]),
        current_version: Lithic::Models::AuthRules::V2PromoteResponse::CurrentVersion | nil,
        draft_version: Lithic::Models::AuthRules::V2PromoteResponse::DraftVersion | nil,
        name: String | nil,
        program_level: Lithic::Internal::Type::Boolean,
        state: Lithic::Models::AuthRules::V2PromoteResponse::State,
        type: Lithic::Models::AuthRules::V2PromoteResponse::Type,
        excluded_card_tokens: ^(Lithic::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_report
    response = @lithic.auth_rules.v2.report("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Lithic::Models::AuthRules::V2ReportResponse
    end

    assert_pattern do
      response => {
        report_token: String | nil
      }
    end
  end
end
