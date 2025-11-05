# frozen_string_literal: true

module Lithic
  module Resources
    class Disputes
      # Initiate a dispute.
      #
      # @overload create(amount:, reason:, transaction_token:, customer_filed_date: nil, customer_note: nil, request_options: {})
      #
      # @param amount [Integer] Amount to dispute
      #
      # @param reason [Symbol, Lithic::Models::DisputeCreateParams::Reason] Reason for dispute
      #
      # @param transaction_token [String] Transaction to dispute
      #
      # @param customer_filed_date [Time] Date the customer filed the dispute
      #
      # @param customer_note [String] Customer description of dispute
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeCreateResponse]
      #
      # @see Lithic::Models::DisputeCreateParams
      def create(params)
        parsed, options = Lithic::DisputeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/disputes",
          body: parsed,
          model: Lithic::Models::DisputeCreateResponse,
          options: options
        )
      end

      # Get dispute.
      #
      # @overload retrieve(dispute_token, request_options: {})
      #
      # @param dispute_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeRetrieveResponse]
      #
      # @see Lithic::Models::DisputeRetrieveParams
      def retrieve(dispute_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/disputes/%1$s", dispute_token],
          model: Lithic::Models::DisputeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update dispute. Can only be modified if status is `NEW`.
      #
      # @overload update(dispute_token, amount: nil, customer_filed_date: nil, customer_note: nil, reason: nil, request_options: {})
      #
      # @param dispute_token [String]
      #
      # @param amount [Integer] Amount to dispute
      #
      # @param customer_filed_date [Time] Date the customer filed the dispute
      #
      # @param customer_note [String] Customer description of dispute
      #
      # @param reason [Symbol, Lithic::Models::DisputeUpdateParams::Reason] Reason for dispute
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeUpdateResponse]
      #
      # @see Lithic::Models::DisputeUpdateParams
      def update(dispute_token, params = {})
        parsed, options = Lithic::DisputeUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/disputes/%1$s", dispute_token],
          body: parsed,
          model: Lithic::Models::DisputeUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::DisputeListParams} for more details.
      #
      # List disputes.
      #
      # @overload list(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, status: nil, transaction_tokens: nil, request_options: {})
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param status [Symbol, Lithic::Models::DisputeListParams::Status] List disputes of a specific status.
      #
      # @param transaction_tokens [Array<String>] Transaction tokens to filter by.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::DisputeListResponse>]
      #
      # @see Lithic::Models::DisputeListParams
      def list(params = {})
        parsed, options = Lithic::DisputeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/disputes",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::DisputeListResponse,
          options: options
        )
      end

      # Withdraw dispute.
      #
      # @overload delete(dispute_token, request_options: {})
      #
      # @param dispute_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeDeleteResponse]
      #
      # @see Lithic::Models::DisputeDeleteParams
      def delete(dispute_token, params = {})
        @client.request(
          method: :delete,
          path: ["v1/disputes/%1$s", dispute_token],
          model: Lithic::Models::DisputeDeleteResponse,
          options: params[:request_options]
        )
      end

      # Soft delete evidence for a dispute. Evidence will not be reviewed or submitted
      # by Lithic after it is withdrawn.
      #
      # @overload delete_evidence(evidence_token, dispute_token:, request_options: {})
      #
      # @param evidence_token [String]
      # @param dispute_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeEvidence]
      #
      # @see Lithic::Models::DisputeDeleteEvidenceParams
      def delete_evidence(evidence_token, params)
        parsed, options = Lithic::DisputeDeleteEvidenceParams.dump_request(params)
        dispute_token =
          parsed.delete(:dispute_token) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["v1/disputes/%1$s/evidences/%2$s", dispute_token, evidence_token],
          model: Lithic::DisputeEvidence,
          options: options
        )
      end

      # Use this endpoint to upload evidences for the dispute. It will return a URL to
      # upload your documents to. The URL will expire in 30 minutes.
      #
      # Uploaded documents must either be a `jpg`, `png` or `pdf` file, and each must be
      # less than 5 GiB.
      #
      # @overload initiate_evidence_upload(dispute_token, filename: nil, request_options: {})
      #
      # @param dispute_token [String]
      #
      # @param filename [String] Filename of the evidence.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeEvidence]
      #
      # @see Lithic::Models::DisputeInitiateEvidenceUploadParams
      def initiate_evidence_upload(dispute_token, params = {})
        parsed, options = Lithic::DisputeInitiateEvidenceUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/disputes/%1$s/evidences", dispute_token],
          body: parsed,
          model: Lithic::DisputeEvidence,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::DisputeListEvidencesParams} for more details.
      #
      # List evidence metadata for a dispute.
      #
      # @overload list_evidences(dispute_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param dispute_token [String]
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::DisputeEvidence>]
      #
      # @see Lithic::Models::DisputeListEvidencesParams
      def list_evidences(dispute_token, params = {})
        parsed, options = Lithic::DisputeListEvidencesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/disputes/%1$s/evidences", dispute_token],
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::DisputeEvidence,
          options: options
        )
      end

      # Get a dispute's evidence metadata.
      #
      # @overload retrieve_evidence(evidence_token, dispute_token:, request_options: {})
      #
      # @param evidence_token [String]
      # @param dispute_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeEvidence]
      #
      # @see Lithic::Models::DisputeRetrieveEvidenceParams
      def retrieve_evidence(evidence_token, params)
        parsed, options = Lithic::DisputeRetrieveEvidenceParams.dump_request(params)
        dispute_token =
          parsed.delete(:dispute_token) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/disputes/%1$s/evidences/%2$s", dispute_token, evidence_token],
          model: Lithic::DisputeEvidence,
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
