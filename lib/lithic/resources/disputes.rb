# frozen_string_literal: true

module Lithic
  module Resources
    class Disputes
      # Initiate a dispute.
      #
      # @overload create(amount:, reason:, transaction_token:, customer_filed_date: nil, customer_note: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param reason [Symbol, Lithic::Models::DisputeCreateParams::Reason]
      # @param transaction_token [String]
      # @param customer_filed_date [Time]
      # @param customer_note [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload retrieve(dispute_token, request_options: {})
      #
      # @param dispute_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload update(dispute_token, amount: nil, customer_filed_date: nil, customer_note: nil, reason: nil, request_options: {})
      #
      # @param dispute_token [String]
      # @param amount [Integer]
      # @param customer_filed_date [Time]
      # @param customer_note [String]
      # @param reason [Symbol, Lithic::Models::DisputeUpdateParams::Reason]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, status: nil, transaction_tokens: nil, request_options: {})
      #
      # @param begin_ [Time]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param status [Symbol, Lithic::Models::DisputeListParams::Status]
      # @param transaction_tokens [Array<String>]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Dispute>]
      #
      # @see Lithic::Models::DisputeListParams
      def list(params = {})
        parsed, options = Lithic::Models::DisputeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/disputes",
          query: parsed,
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::Dispute,
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
      # @overload initiate_evidence_upload(dispute_token, filename: nil, request_options: {})
      #
      # @param dispute_token [String]
      # @param filename [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list_evidences(dispute_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param dispute_token [String]
      # @param begin_ [Time]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::DisputeEvidence>]
      #
      # @see Lithic::Models::DisputeListEvidencesParams
      def list_evidences(dispute_token, params = {})
        parsed, options = Lithic::Models::DisputeListEvidencesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/disputes/%1$s/evidences", dispute_token],
          query: parsed,
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::DisputeEvidence,
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
