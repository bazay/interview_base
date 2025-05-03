# frozen_string_literal: true

require_relative "../lib/interview_base"

RSpec.describe InterviewBase::Program do
  let(:described_instance) { described_class.new(debug: debug) }
  let(:debug) { true }

  describe "#call" do
    subject(:call) { described_instance.call }

    it "does something useful"

    it "shows debug message" do
      expect { subject }.to output(/Debug message: Program started/).to_stdout
    end
  end
end
