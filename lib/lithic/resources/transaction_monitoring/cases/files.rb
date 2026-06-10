# frozen_string_literal: true

module Lithic
  module Resources
    class TransactionMonitoring
      class Cases
        class Files
          # Creates a file record and returns a presigned URL for uploading the file to the
          # case.
          #
          # @overload create(case_token, name:, request_options: {})
          #
          # @param case_token [String] Globally unique identifier for the case.
          #
          # @param name [String] Name of the file to upload
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Models::TransactionMonitoring::Cases::CaseFile]
          #
          # @see Lithic::Models::TransactionMonitoring::Cases::FileCreateParams
          def create(case_token, params)
            parsed, options = Lithic::TransactionMonitoring::Cases::FileCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v1/transaction_monitoring/cases/%1$s/files", case_token],
              body: parsed,
              model: Lithic::TransactionMonitoring::Cases::CaseFile,
              options: options
            )
          end

          # Retrieves a single file attached to a case, including a presigned download URL
          # when the file is ready.
          #
          # @overload retrieve(file_token, case_token:, request_options: {})
          #
          # @param file_token [String] Globally unique identifier for the file.
          #
          # @param case_token [String] Globally unique identifier for the case.
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Models::TransactionMonitoring::Cases::CaseFile]
          #
          # @see Lithic::Models::TransactionMonitoring::Cases::FileRetrieveParams
          def retrieve(file_token, params)
            parsed, options = Lithic::TransactionMonitoring::Cases::FileRetrieveParams.dump_request(params)
            case_token =
              parsed.delete(:case_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/transaction_monitoring/cases/%1$s/files/%2$s", case_token, file_token],
              model: Lithic::TransactionMonitoring::Cases::CaseFile,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Lithic::Models::TransactionMonitoring::Cases::FileListParams} for more details.
          #
          # Lists the files attached to a case.
          #
          # @overload list(case_token, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
          #
          # @param case_token [String] Globally unique identifier for the case.
          #
          # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
          #
          # @param page_size [Integer] Page size (for pagination).
          #
          # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Internal::CursorPage<Lithic::Models::TransactionMonitoring::Cases::CaseFile>]
          #
          # @see Lithic::Models::TransactionMonitoring::Cases::FileListParams
          def list(case_token, params = {})
            parsed, options = Lithic::TransactionMonitoring::Cases::FileListParams.dump_request(params)
            query = Lithic::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v1/transaction_monitoring/cases/%1$s/files", case_token],
              query: query,
              page: Lithic::Internal::CursorPage,
              model: Lithic::TransactionMonitoring::Cases::CaseFile,
              options: options
            )
          end

          # Deletes a file from a case.
          #
          # @overload delete(file_token, case_token:, request_options: {})
          #
          # @param file_token [String] Globally unique identifier for the file.
          #
          # @param case_token [String] Globally unique identifier for the case.
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Lithic::Models::TransactionMonitoring::Cases::FileDeleteParams
          def delete(file_token, params)
            parsed, options = Lithic::TransactionMonitoring::Cases::FileDeleteParams.dump_request(params)
            case_token =
              parsed.delete(:case_token) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["v1/transaction_monitoring/cases/%1$s/files/%2$s", case_token, file_token],
              model: NilClass,
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
end
