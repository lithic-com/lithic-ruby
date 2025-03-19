# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::CreditProducts::PrimeRatesTest < Lithic::Test::ResourceTest
  def test_create_required_params
    response =
      @lithic.credit_products.prime_rates.create(
        "credit_product_token",
        effective_date: "2019-12-27",
        rate: "rate"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    response = @lithic.credit_products.prime_rates.retrieve("credit_product_token")

    assert_pattern do
      response => Lithic::Models::CreditProducts::PrimeRateRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Lithic::ArrayOf[Lithic::Models::CreditProducts::PrimeRateRetrieveResponse::Data]),
        has_more: Lithic::BooleanModel
      }
    end
  end
end
