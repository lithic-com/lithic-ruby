# frozen_string_literal: true

module Lithic
  module Resources
    class Fraud
      class Transactions
        # Retrieve a fraud report for a specific transaction identified by its unique
        # transaction token.
        #
        # @overload retrieve(transaction_token, request_options: {})
        #
        # @param transaction_token [String] The token of the transaction that the enhanced data is associated with.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::Fraud::TransactionRetrieveResponse]
        #
        # @see Lithic::Models::Fraud::TransactionRetrieveParams
        def retrieve(transaction_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/fraud/transactions/%1$s", transaction_token],
            model: Lithic::Models::Fraud::TransactionRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Fraud::TransactionReportParams} for more details.
        #
        # Report fraud for a specific transaction token by providing details such as fraud
        # type, fraud status, and any additional comments.
        #
        # @overload report(transaction_token, fraud_status:, comment: nil, fraud_type: nil, request_options: {})
        #
        # @param transaction_token [String] The token of the transaction that the enhanced data is associated with.
        #
        # @param fraud_status [Symbol, Lithic::Models::Fraud::TransactionReportParams::FraudStatus] The fraud status of the transaction, string (enum) supporting the following valu
        #
        # @param comment [String] Optional field providing additional information or context about why the transac
        #
        # @param fraud_type [Symbol, Lithic::Models::Fraud::TransactionReportParams::FraudType] Specifies the type or category of fraud that the transaction is suspected or con
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::Fraud::TransactionReportResponse]
        #
        # @see Lithic::Models::Fraud::TransactionReportParams
        def report(transaction_token, params)
          parsed, options = Lithic::Fraud::TransactionReportParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/fraud/transactions/%1$s", transaction_token],
            body: parsed,
            model: Lithic::Models::Fraud::TransactionReportResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
