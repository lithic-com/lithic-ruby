# typed: strong

module Lithic
  module Resources
    class TransactionMonitoring
      class Cases
        class Files
          # Creates a file record and returns a presigned URL for uploading the file to the
          # case.
          sig do
            params(
              case_token: String,
              name: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(Lithic::TransactionMonitoring::Cases::CaseFile)
          end
          def create(
            # Globally unique identifier for the case.
            case_token,
            # Name of the file to upload
            name:,
            request_options: {}
          )
          end

          # Retrieves a single file attached to a case, including a presigned download URL
          # when the file is ready.
          sig do
            params(
              file_token: String,
              case_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(Lithic::TransactionMonitoring::Cases::CaseFile)
          end
          def retrieve(
            # Globally unique identifier for the file.
            file_token,
            # Globally unique identifier for the case.
            case_token:,
            request_options: {}
          )
          end

          # Lists the files attached to a case.
          sig do
            params(
              case_token: String,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(
              Lithic::Internal::CursorPage[
                Lithic::TransactionMonitoring::Cases::CaseFile
              ]
            )
          end
          def list(
            # Globally unique identifier for the case.
            case_token,
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

          # Deletes a file from a case.
          sig do
            params(
              file_token: String,
              case_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Globally unique identifier for the file.
            file_token,
            # Globally unique identifier for the case.
            case_token:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Lithic::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
