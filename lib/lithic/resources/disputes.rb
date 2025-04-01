# frozen_string_literal: true

module Lithic
  module Resources
    class Disputes
      # Initiate a dispute.
      #
      # @param params [Lithic::Models::DisputeCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Amount to dispute
      #
      #   @option params [Symbol, Lithic::Models::DisputeCreateParams::Reason] :reason Reason for dispute
      #
      #   @option params [String] :transaction_token Transaction to dispute
      #
      #   @option params [Time] :customer_filed_date Date the customer filed the dispute
      #
      #   @option params [String] :customer_note Customer description of dispute
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Dispute]
      #
      # @see Lithic::Models::DisputeCreateParams
      def create(params)
        parsed, options = Lithic::Models::DisputeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/disputes",
          body: parsed,
          model: Lithic::Models::Dispute,
          options: options
        )
      end

      # Get dispute.
      #
      # @param dispute_token [String]
      #
      # @param params [Lithic::Models::DisputeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Dispute]
      #
      # @see Lithic::Models::DisputeRetrieveParams
      def retrieve(dispute_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/disputes/%1$s", dispute_token],
          model: Lithic::Models::Dispute,
          options: params[:request_options]
        )
      end

      # Update dispute. Can only be modified if status is `NEW`.
      #
      # @param dispute_token [String]
      #
      # @param params [Lithic::Models::DisputeUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Amount to dispute
      #
      #   @option params [Time] :customer_filed_date Date the customer filed the dispute
      #
      #   @option params [String] :customer_note Customer description of dispute
      #
      #   @option params [Symbol, Lithic::Models::DisputeUpdateParams::Reason] :reason Reason for dispute
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Dispute]
      #
      # @see Lithic::Models::DisputeUpdateParams
      def update(dispute_token, params = {})
        parsed, options = Lithic::Models::DisputeUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/disputes/%1$s", dispute_token],
          body: parsed,
          model: Lithic::Models::Dispute,
          options: options
        )
      end

      # List disputes.
      #
      # @param params [Lithic::Models::DisputeListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::DisputeListParams::Status] :status List disputes of a specific status.
      #
      #   @option params [Array<String>] :transaction_tokens Transaction tokens to filter by.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::Dispute>]
      #
      # @see Lithic::Models::DisputeListParams
      def list(params = {})
        parsed, options = Lithic::Models::DisputeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/disputes",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::Dispute,
          options: options
        )
      end

      # Withdraw dispute.
      #
      # @param dispute_token [String]
      #
      # @param params [Lithic::Models::DisputeDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Dispute]
      #
      # @see Lithic::Models::DisputeDeleteParams
      def delete(dispute_token, params = {})
        @client.request(
          method: :delete,
          path: ["v1/disputes/%1$s", dispute_token],
          model: Lithic::Models::Dispute,
          options: params[:request_options]
        )
      end

      # Soft delete evidence for a dispute. Evidence will not be reviewed or submitted
      #   by Lithic after it is withdrawn.
      #
      # @param evidence_token [String]
      #
      # @param params [Lithic::Models::DisputeDeleteEvidenceParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :dispute_token
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::DisputeEvidence]
      #
      # @see Lithic::Models::DisputeDeleteEvidenceParams
      def delete_evidence(evidence_token, params)
        parsed, options = Lithic::Models::DisputeDeleteEvidenceParams.dump_request(params)
        dispute_token =
          parsed.delete(:dispute_token) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["v1/disputes/%1$s/evidences/%2$s", dispute_token, evidence_token],
          model: Lithic::Models::DisputeEvidence,
          options: options
        )
      end

      # Use this endpoint to upload evidences for the dispute. It will return a URL to
      #   upload your documents to. The URL will expire in 30 minutes.
      #
      #   Uploaded documents must either be a `jpg`, `png` or `pdf` file, and each must be
      #   less than 5 GiB.
      #
      # @param dispute_token [String]
      #
      # @param params [Lithic::Models::DisputeInitiateEvidenceUploadParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :filename Filename of the evidence.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::DisputeEvidence]
      #
      # @see Lithic::Models::DisputeInitiateEvidenceUploadParams
      def initiate_evidence_upload(dispute_token, params = {})
        parsed, options = Lithic::Models::DisputeInitiateEvidenceUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/disputes/%1$s/evidences", dispute_token],
          body: parsed,
          model: Lithic::Models::DisputeEvidence,
          options: options
        )
      end

      # List evidence metadata for a dispute.
      #
      # @param dispute_token [String]
      #
      # @param params [Lithic::Models::DisputeListEvidencesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::DisputeEvidence>]
      #
      # @see Lithic::Models::DisputeListEvidencesParams
      def list_evidences(dispute_token, params = {})
        parsed, options = Lithic::Models::DisputeListEvidencesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/disputes/%1$s/evidences", dispute_token],
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::DisputeEvidence,
          options: options
        )
      end

      # Get a dispute's evidence metadata.
      #
      # @param evidence_token [String]
      #
      # @param params [Lithic::Models::DisputeRetrieveEvidenceParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :dispute_token
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::DisputeEvidence]
      #
      # @see Lithic::Models::DisputeRetrieveEvidenceParams
      def retrieve_evidence(evidence_token, params)
        parsed, options = Lithic::Models::DisputeRetrieveEvidenceParams.dump_request(params)
        dispute_token =
          parsed.delete(:dispute_token) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/disputes/%1$s/evidences/%2$s", dispute_token, evidence_token],
          model: Lithic::Models::DisputeEvidence,
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
