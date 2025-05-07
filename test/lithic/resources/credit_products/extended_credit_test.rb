# frozen_string_literal: true

require_relative "../../test_helper"

class Lithic::Test::Resources::CreditProducts::ExtendedCreditTest < Lithic::Test::ResourceTest
  def test_retrieve
    response = @lithic.credit_products.extended_credit.retrieve("credit_product_token")

    assert_pattern do
      response => Lithic::CreditProducts::CreditProductsExtendedCredit
    end

    assert_pattern do
      response => {
        credit_extended: Integer
      }
    end
  end
end
