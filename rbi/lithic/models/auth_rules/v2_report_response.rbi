# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ReportResponse < Lithic::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :report_token

        sig { params(report_token: String).void }
        attr_writer :report_token

        sig { params(report_token: String).returns(T.attached_class) }
        def self.new(report_token: nil); end

        sig { override.returns({report_token: String}) }
        def to_hash; end
      end
    end
  end
end
