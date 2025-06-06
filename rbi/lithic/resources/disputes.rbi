# typed: strong

module Lithic
  module Resources
    class Disputes
      # Initiate a dispute.
      sig do
        params(
          amount: Integer,
          reason: Lithic::DisputeCreateParams::Reason::OrSymbol,
          transaction_token: String,
          customer_filed_date: Time,
          customer_note: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Dispute)
      end
      def create(
        # Amount to dispute
        amount:,
        # Reason for dispute
        reason:,
        # Transaction to dispute
        transaction_token:,
        # Date the customer filed the dispute
        customer_filed_date: nil,
        # Customer description of dispute
        customer_note: nil,
        request_options: {}
      )
      end

      # Get dispute.
      sig do
        params(
          dispute_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Dispute)
      end
      def retrieve(dispute_token, request_options: {})
      end

      # Update dispute. Can only be modified if status is `NEW`.
      sig do
        params(
          dispute_token: String,
          amount: Integer,
          customer_filed_date: Time,
          customer_note: String,
          reason: Lithic::DisputeUpdateParams::Reason::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Dispute)
      end
      def update(
        dispute_token,
        # Amount to dispute
        amount: nil,
        # Date the customer filed the dispute
        customer_filed_date: nil,
        # Customer description of dispute
        customer_note: nil,
        # Reason for dispute
        reason: nil,
        request_options: {}
      )
      end

      # List disputes.
      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::DisputeListParams::Status::OrSymbol,
          transaction_tokens: T::Array[String],
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::Dispute])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # List disputes of a specific status.
        status: nil,
        # Transaction tokens to filter by.
        transaction_tokens: nil,
        request_options: {}
      )
      end

      # Withdraw dispute.
      sig do
        params(
          dispute_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Dispute)
      end
      def delete(dispute_token, request_options: {})
      end

      # Soft delete evidence for a dispute. Evidence will not be reviewed or submitted
      # by Lithic after it is withdrawn.
      sig do
        params(
          evidence_token: String,
          dispute_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::DisputeEvidence)
      end
      def delete_evidence(evidence_token, dispute_token:, request_options: {})
      end

      # Use this endpoint to upload evidences for the dispute. It will return a URL to
      # upload your documents to. The URL will expire in 30 minutes.
      #
      # Uploaded documents must either be a `jpg`, `png` or `pdf` file, and each must be
      # less than 5 GiB.
      sig do
        params(
          dispute_token: String,
          filename: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::DisputeEvidence)
      end
      def initiate_evidence_upload(
        dispute_token,
        # Filename of the evidence.
        filename: nil,
        request_options: {}
      )
      end

      # List evidence metadata for a dispute.
      sig do
        params(
          dispute_token: String,
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::DisputeEvidence])
      end
      def list_evidences(
        dispute_token,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        request_options: {}
      )
      end

      # Get a dispute's evidence metadata.
      sig do
        params(
          evidence_token: String,
          dispute_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::DisputeEvidence)
      end
      def retrieve_evidence(evidence_token, dispute_token:, request_options: {})
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
