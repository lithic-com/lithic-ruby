# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ReportResponse < Lithic::BaseModel
        sig { returns(T.nilable(String)) }
        def report_token
        end

        sig { params(_: String).returns(String) }
        def report_token=(_)
        end

        sig { params(report_token: String).returns(T.attached_class) }
        def self.new(report_token: nil)
        end

        sig { override.returns({report_token: String}) }
        def to_hash
        end
      end
    end
  end
end
