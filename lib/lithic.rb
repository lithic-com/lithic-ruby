# frozen_string_literal: true

# Standard libraries.
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller.chain([$PROGRAM_NAME]).chain(ARGV).grep(/tapioca/)
  Warning.warn(
    <<~WARN
      \n
      ⚠️ skipped loading of "lithic" gem under `tapioca`.

      This message is normal and expected if you are running a `tapioca` command, and does not impact `.rbi` generation.
      \n
    WARN
  )
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "lithic/version"
require_relative "lithic/internal/util"
require_relative "lithic/internal/type/converter"
require_relative "lithic/internal/type/unknown"
require_relative "lithic/internal/type/boolean"
require_relative "lithic/internal/type/enum"
require_relative "lithic/internal/type/union"
require_relative "lithic/internal/type/array_of"
require_relative "lithic/internal/type/hash_of"
require_relative "lithic/internal/type/base_model"
require_relative "lithic/internal/type/base_page"
require_relative "lithic/internal/type/request_parameters"
require_relative "lithic/internal"
require_relative "lithic/request_options"
require_relative "lithic/errors"
require_relative "lithic/internal/transport/base_client"
require_relative "lithic/internal/transport/pooled_net_requester"
require_relative "lithic/client"
require_relative "lithic/internal/cursor_page"
require_relative "lithic/internal/single_page"
require_relative "lithic/models/payment"
require_relative "lithic/models/three_ds/challenge_response"
require_relative "lithic/models/account"
require_relative "lithic/models/account_financial_account_type"
require_relative "lithic/models/account_holder"
require_relative "lithic/models/account_holder_create_params"
require_relative "lithic/models/account_holder_create_response"
require_relative "lithic/models/account_holder_list_documents_params"
require_relative "lithic/models/account_holder_list_documents_response"
require_relative "lithic/models/account_holder_list_params"
require_relative "lithic/models/account_holder_retrieve_document_params"
require_relative "lithic/models/account_holder_retrieve_params"
require_relative "lithic/models/account_holder_simulate_enrollment_document_review_params"
require_relative "lithic/models/account_holder_simulate_enrollment_review_params"
require_relative "lithic/models/account_holder_simulate_enrollment_review_response"
require_relative "lithic/models/account_holder_update_params"
require_relative "lithic/models/account_holder_update_response"
require_relative "lithic/models/account_holder_upload_document_params"
require_relative "lithic/models/account_list_params"
require_relative "lithic/models/account_retrieve_params"
require_relative "lithic/models/account_retrieve_spend_limits_params"
require_relative "lithic/models/account_spend_limits"
require_relative "lithic/models/account_update_params"
require_relative "lithic/models/address"
require_relative "lithic/models/address_update"
require_relative "lithic/models/aggregate_balance"
require_relative "lithic/models/aggregate_balance_list_params"
require_relative "lithic/models/api_status"
require_relative "lithic/models/auth_rules/auth_rule"
require_relative "lithic/models/auth_rules/auth_rule_condition"
require_relative "lithic/models/auth_rules/conditional_attribute"
require_relative "lithic/models/auth_rules/conditional_block_parameters"
require_relative "lithic/models/auth_rules/v2/backtest_create_params"
require_relative "lithic/models/auth_rules/v2/backtest_create_response"
require_relative "lithic/models/auth_rules/v2/backtest_results"
require_relative "lithic/models/auth_rules/v2/backtest_retrieve_params"
require_relative "lithic/models/auth_rules/v2_apply_params"
require_relative "lithic/models/auth_rules/v2_apply_response"
require_relative "lithic/models/auth_rules/v2_create_params"
require_relative "lithic/models/auth_rules/v2_create_response"
require_relative "lithic/models/auth_rules/v2_delete_params"
require_relative "lithic/models/auth_rules/v2_draft_params"
require_relative "lithic/models/auth_rules/v2_draft_response"
require_relative "lithic/models/auth_rules/v2_list_params"
require_relative "lithic/models/auth_rules/v2_list_response"
require_relative "lithic/models/auth_rules/v2_promote_params"
require_relative "lithic/models/auth_rules/v2_promote_response"
require_relative "lithic/models/auth_rules/v2_report_params"
require_relative "lithic/models/auth_rules/v2_report_response"
require_relative "lithic/models/auth_rules/v2_retrieve_params"
require_relative "lithic/models/auth_rules/v2_retrieve_response"
require_relative "lithic/models/auth_rules/v2_update_params"
require_relative "lithic/models/auth_rules/v2_update_response"
require_relative "lithic/models/auth_rules/velocity_limit_params"
require_relative "lithic/models/auth_rules/velocity_limit_params_period_window"
require_relative "lithic/models/auth_stream_enrollment_retrieve_secret_params"
require_relative "lithic/models/auth_stream_enrollment_rotate_secret_params"
require_relative "lithic/models/auth_stream_secret"
require_relative "lithic/models/balance"
require_relative "lithic/models/balance_list_params"
require_relative "lithic/models/book_transfer_create_params"
require_relative "lithic/models/book_transfer_list_params"
require_relative "lithic/models/book_transfer_response"
require_relative "lithic/models/book_transfer_retrieve_params"
require_relative "lithic/models/book_transfer_reverse_params"
require_relative "lithic/models/card"
require_relative "lithic/models/card_convert_physical_params"
require_relative "lithic/models/card_create_params"
require_relative "lithic/models/card_embed_params"
require_relative "lithic/models/card_list_params"
require_relative "lithic/models/card_program"
require_relative "lithic/models/card_program_list_params"
require_relative "lithic/models/card_program_retrieve_params"
require_relative "lithic/models/card_provision_params"
require_relative "lithic/models/card_provision_response"
require_relative "lithic/models/card_reissue_params"
require_relative "lithic/models/card_renew_params"
require_relative "lithic/models/card_retrieve_params"
require_relative "lithic/models/card_retrieve_spend_limits_params"
require_relative "lithic/models/cards/aggregate_balance_list_params"
require_relative "lithic/models/cards/aggregate_balance_list_response"
require_relative "lithic/models/cards/balance_list_params"
require_relative "lithic/models/cards/balance_list_response"
require_relative "lithic/models/cards/financial_transaction_list_params"
require_relative "lithic/models/cards/financial_transaction_retrieve_params"
require_relative "lithic/models/card_search_by_pan_params"
require_relative "lithic/models/card_spend_limits"
require_relative "lithic/models/card_update_params"
require_relative "lithic/models/carrier"
require_relative "lithic/models/client_api_status_params"
require_relative "lithic/models/credit_products/extended_credit"
require_relative "lithic/models/credit_products/extended_credit_retrieve_params"
require_relative "lithic/models/credit_products/prime_rate_create_params"
require_relative "lithic/models/credit_products/prime_rate_retrieve_params"
require_relative "lithic/models/credit_products/prime_rate_retrieve_response"
require_relative "lithic/models/digital_card_art"
require_relative "lithic/models/digital_card_art_list_params"
require_relative "lithic/models/digital_card_art_retrieve_params"
require_relative "lithic/models/dispute"
require_relative "lithic/models/dispute_create_params"
require_relative "lithic/models/dispute_delete_evidence_params"
require_relative "lithic/models/dispute_delete_params"
require_relative "lithic/models/dispute_evidence"
require_relative "lithic/models/dispute_initiate_evidence_upload_params"
require_relative "lithic/models/dispute_list_evidences_params"
require_relative "lithic/models/dispute_list_params"
require_relative "lithic/models/dispute_retrieve_evidence_params"
require_relative "lithic/models/dispute_retrieve_params"
require_relative "lithic/models/dispute_update_params"
require_relative "lithic/models/document"
require_relative "lithic/models/event"
require_relative "lithic/models/event_list_attempts_params"
require_relative "lithic/models/event_list_params"
require_relative "lithic/models/event_retrieve_params"
require_relative "lithic/models/events/event_subscription_resend_params"
require_relative "lithic/models/events/subscription_create_params"
require_relative "lithic/models/events/subscription_delete_params"
require_relative "lithic/models/events/subscription_list_attempts_params"
require_relative "lithic/models/events/subscription_list_params"
require_relative "lithic/models/events/subscription_recover_params"
require_relative "lithic/models/events/subscription_replay_missing_params"
require_relative "lithic/models/events/subscription_retrieve_params"
require_relative "lithic/models/events/subscription_retrieve_secret_params"
require_relative "lithic/models/events/subscription_retrieve_secret_response"
require_relative "lithic/models/events/subscription_rotate_secret_params"
require_relative "lithic/models/events/subscription_send_simulated_example_params"
require_relative "lithic/models/events/subscription_update_params"
require_relative "lithic/models/event_subscription"
require_relative "lithic/models/external_bank_account_address"
require_relative "lithic/models/external_bank_account_create_params"
require_relative "lithic/models/external_bank_account_create_response"
require_relative "lithic/models/external_bank_account_list_params"
require_relative "lithic/models/external_bank_account_list_response"
require_relative "lithic/models/external_bank_account_retrieve_params"
require_relative "lithic/models/external_bank_account_retrieve_response"
require_relative "lithic/models/external_bank_account_retry_micro_deposits_params"
require_relative "lithic/models/external_bank_account_retry_micro_deposits_response"
require_relative "lithic/models/external_bank_account_retry_prenote_params"
require_relative "lithic/models/external_bank_account_retry_prenote_response"
require_relative "lithic/models/external_bank_accounts/micro_deposit_create_params"
require_relative "lithic/models/external_bank_accounts/micro_deposit_create_response"
require_relative "lithic/models/external_bank_account_update_params"
require_relative "lithic/models/external_bank_account_update_response"
require_relative "lithic/models/external_payment"
require_relative "lithic/models/external_payment_cancel_params"
require_relative "lithic/models/external_payment_create_params"
require_relative "lithic/models/external_payment_list_params"
require_relative "lithic/models/external_payment_release_params"
require_relative "lithic/models/external_payment_retrieve_params"
require_relative "lithic/models/external_payment_reverse_params"
require_relative "lithic/models/external_payment_settle_params"
require_relative "lithic/models/financial_account"
require_relative "lithic/models/financial_account_create_params"
require_relative "lithic/models/financial_account_list_params"
require_relative "lithic/models/financial_account_retrieve_params"
require_relative "lithic/models/financial_accounts/balance_list_params"
require_relative "lithic/models/financial_accounts/balance_list_response"
require_relative "lithic/models/financial_accounts/credit_configuration_retrieve_params"
require_relative "lithic/models/financial_accounts/credit_configuration_update_params"
require_relative "lithic/models/financial_accounts/financial_account_credit_config"
require_relative "lithic/models/financial_accounts/statements"
require_relative "lithic/models/financial_accounts/financial_transaction_list_params"
require_relative "lithic/models/financial_accounts/financial_transaction_retrieve_params"
require_relative "lithic/models/financial_accounts/loan_tape"
require_relative "lithic/models/financial_accounts/loan_tape_list_params"
require_relative "lithic/models/financial_accounts/loan_tape_retrieve_params"
require_relative "lithic/models/financial_accounts/statement"
require_relative "lithic/models/financial_accounts/statement_list_params"
require_relative "lithic/models/financial_accounts/statement_retrieve_params"
require_relative "lithic/models/financial_accounts/statements/line_item_list_params"
require_relative "lithic/models/financial_accounts/statements/statement_line_items"
require_relative "lithic/models/financial_account_update_params"
require_relative "lithic/models/financial_account_update_status_params"
require_relative "lithic/models/financial_transaction"
require_relative "lithic/models/instance_financial_account_type"
require_relative "lithic/models/kyb"
require_relative "lithic/models/kyb_business_entity"
require_relative "lithic/models/kyc"
require_relative "lithic/models/kyc_exempt"
require_relative "lithic/models/management_operation_create_params"
require_relative "lithic/models/management_operation_list_params"
require_relative "lithic/models/management_operation_retrieve_params"
require_relative "lithic/models/management_operation_reverse_params"
require_relative "lithic/models/management_operation_transaction"
require_relative "lithic/models/message_attempt"
require_relative "lithic/models/owner_type"
require_relative "lithic/models/payment_create_params"
require_relative "lithic/models/payment_create_response"
require_relative "lithic/models/payment_list_params"
require_relative "lithic/models/payment_retrieve_params"
require_relative "lithic/models/payment_retry_params"
require_relative "lithic/models/payment_retry_response"
require_relative "lithic/models/payment_simulate_action_params"
require_relative "lithic/models/payment_simulate_action_response"
require_relative "lithic/models/payment_simulate_receipt_params"
require_relative "lithic/models/payment_simulate_receipt_response"
require_relative "lithic/models/payment_simulate_release_params"
require_relative "lithic/models/payment_simulate_release_response"
require_relative "lithic/models/payment_simulate_return_params"
require_relative "lithic/models/payment_simulate_return_response"
require_relative "lithic/models/reports/settlement/network_total_list_params"
require_relative "lithic/models/reports/settlement/network_total_list_response"
require_relative "lithic/models/reports/settlement/network_total_retrieve_params"
require_relative "lithic/models/reports/settlement/network_total_retrieve_response"
require_relative "lithic/models/reports/settlement_list_details_params"
require_relative "lithic/models/reports/settlement_summary_params"
require_relative "lithic/models/required_document"
require_relative "lithic/models/responder_endpoint_check_status_params"
require_relative "lithic/models/responder_endpoint_create_params"
require_relative "lithic/models/responder_endpoint_create_response"
require_relative "lithic/models/responder_endpoint_delete_params"
require_relative "lithic/models/responder_endpoint_status"
require_relative "lithic/models/settlement_detail"
require_relative "lithic/models/settlement_report"
require_relative "lithic/models/settlement_summary_details"
require_relative "lithic/models/shipping_address"
require_relative "lithic/models/spend_limit_duration"
require_relative "lithic/models/three_ds/authentication_retrieve_params"
require_relative "lithic/models/three_ds/authentication_retrieve_response"
require_relative "lithic/models/three_ds/authentication_simulate_otp_entry_params"
require_relative "lithic/models/three_ds/authentication_simulate_params"
require_relative "lithic/models/three_ds/authentication_simulate_response"
require_relative "lithic/models/three_ds/challenge_result"
require_relative "lithic/models/three_ds/decisioning_challenge_response_params"
require_relative "lithic/models/three_ds/decisioning_retrieve_secret_params"
require_relative "lithic/models/three_ds/decisioning_retrieve_secret_response"
require_relative "lithic/models/three_ds/decisioning_rotate_secret_params"
require_relative "lithic/models/tokenization"
require_relative "lithic/models/tokenization_activate_params"
require_relative "lithic/models/tokenization_deactivate_params"
require_relative "lithic/models/tokenization_decisioning_retrieve_secret_params"
require_relative "lithic/models/tokenization_decisioning_rotate_secret_params"
require_relative "lithic/models/tokenization_decisioning_rotate_secret_response"
require_relative "lithic/models/tokenization_list_params"
require_relative "lithic/models/tokenization_pause_params"
require_relative "lithic/models/tokenization_resend_activation_code_params"
require_relative "lithic/models/tokenization_retrieve_params"
require_relative "lithic/models/tokenization_retrieve_response"
require_relative "lithic/models/tokenization_secret"
require_relative "lithic/models/tokenization_simulate_params"
require_relative "lithic/models/tokenization_simulate_response"
require_relative "lithic/models/tokenization_unpause_params"
require_relative "lithic/models/tokenization_update_digital_card_art_params"
require_relative "lithic/models/tokenization_update_digital_card_art_response"
require_relative "lithic/models/transaction"
require_relative "lithic/models/transaction_expire_authorization_params"
require_relative "lithic/models/transaction_list_params"
require_relative "lithic/models/transaction_retrieve_params"
require_relative "lithic/models/transactions/enhanced_commercial_data_retrieve_params"
require_relative "lithic/models/transactions/enhanced_commercial_data_retrieve_response"
require_relative "lithic/models/transactions/events/enhanced_commercial_data_retrieve_params"
require_relative "lithic/models/transactions/events/enhanced_data"
require_relative "lithic/models/transaction_simulate_authorization_advice_params"
require_relative "lithic/models/transaction_simulate_authorization_advice_response"
require_relative "lithic/models/transaction_simulate_authorization_params"
require_relative "lithic/models/transaction_simulate_authorization_response"
require_relative "lithic/models/transaction_simulate_clearing_params"
require_relative "lithic/models/transaction_simulate_clearing_response"
require_relative "lithic/models/transaction_simulate_credit_authorization_params"
require_relative "lithic/models/transaction_simulate_credit_authorization_response"
require_relative "lithic/models/transaction_simulate_return_params"
require_relative "lithic/models/transaction_simulate_return_response"
require_relative "lithic/models/transaction_simulate_return_reversal_params"
require_relative "lithic/models/transaction_simulate_return_reversal_response"
require_relative "lithic/models/transaction_simulate_void_params"
require_relative "lithic/models/transaction_simulate_void_response"
require_relative "lithic/models/transfer"
require_relative "lithic/models/transfer_create_params"
require_relative "lithic/models/verification_method"
require_relative "lithic/resources/account_holders"
require_relative "lithic/resources/accounts"
require_relative "lithic/resources/aggregate_balances"
require_relative "lithic/resources/auth_rules"
require_relative "lithic/resources/auth_rules/v2"
require_relative "lithic/resources/auth_rules/v2/backtests"
require_relative "lithic/resources/auth_stream_enrollment"
require_relative "lithic/resources/balances"
require_relative "lithic/resources/book_transfers"
require_relative "lithic/resources/card_programs"
require_relative "lithic/resources/cards"
require_relative "lithic/resources/cards/aggregate_balances"
require_relative "lithic/resources/cards/balances"
require_relative "lithic/resources/cards/financial_transactions"
require_relative "lithic/resources/credit_products"
require_relative "lithic/resources/credit_products/extended_credit"
require_relative "lithic/resources/credit_products/prime_rates"
require_relative "lithic/resources/digital_card_art"
require_relative "lithic/resources/disputes"
require_relative "lithic/resources/events"
require_relative "lithic/resources/events/event_subscriptions"
require_relative "lithic/resources/events/subscriptions"
require_relative "lithic/resources/external_bank_accounts"
require_relative "lithic/resources/external_bank_accounts/micro_deposits"
require_relative "lithic/resources/external_payments"
require_relative "lithic/resources/financial_accounts"
require_relative "lithic/resources/financial_accounts/balances"
require_relative "lithic/resources/financial_accounts/credit_configuration"
require_relative "lithic/resources/financial_accounts/financial_transactions"
require_relative "lithic/resources/financial_accounts/loan_tapes"
require_relative "lithic/resources/financial_accounts/statements"
require_relative "lithic/resources/financial_accounts/statements/line_items"
require_relative "lithic/resources/management_operations"
require_relative "lithic/resources/payments"
require_relative "lithic/resources/reports"
require_relative "lithic/resources/reports/settlement"
require_relative "lithic/resources/reports/settlement/network_totals"
require_relative "lithic/resources/responder_endpoints"
require_relative "lithic/resources/three_ds"
require_relative "lithic/resources/three_ds/authentication"
require_relative "lithic/resources/three_ds/decisioning"
require_relative "lithic/resources/tokenization_decisioning"
require_relative "lithic/resources/tokenizations"
require_relative "lithic/resources/transactions"
require_relative "lithic/resources/transactions/enhanced_commercial_data"
require_relative "lithic/resources/transactions/events"
require_relative "lithic/resources/transactions/events/enhanced_commercial_data"
require_relative "lithic/resources/transfers"
