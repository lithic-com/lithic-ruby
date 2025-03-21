# typed: strong

module Lithic
  module Resources
    class ExternalBankAccounts
      class MicroDeposits
        # Verify the external bank account by providing the micro deposit amounts.
        sig do
          params(
            external_bank_account_token: String,
            micro_deposits: T::Array[Integer],
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
          )
            .returns(Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse)
        end
        def create(external_bank_account_token, micro_deposits:, request_options: {})
        end

        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
