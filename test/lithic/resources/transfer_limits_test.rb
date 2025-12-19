# frozen_string_literal: true

require_relative "../test_helper"

class Lithic::Test::Resources::TransferLimitsTest < Lithic::Test::ResourceTest
  def test_list
    response = @lithic.transfer_limits.list

    assert_pattern do
      response => Lithic::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Lithic::TransferLimitsResponse::Data
    end

    assert_pattern do
      row => {
        company_id: String,
        daily_limit: Lithic::TransferLimitsResponse::Data::DailyLimit,
        date: Date,
        is_fbo: Lithic::Internal::Type::Boolean,
        monthly_limit: Lithic::TransferLimitsResponse::Data::MonthlyLimit,
        program_limit_per_transaction: Lithic::TransferLimitsResponse::Data::ProgramLimitPerTransaction
      }
    end
  end
end
