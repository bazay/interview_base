# frozen_string_literal: true

require_relative "../lib/interview_base"

RSpec.describe InterviewBase::Program do
  let(:described_instance) { described_class.new(debug: debug) }
  let(:debug) { false }

  describe "#call" do
    subject(:call) { described_instance.call }

    it "does something useful"

    context "when debug is true" do
      let(:debug) { true }

      it "shows debug message" do
        expect { subject }.to output(/Debug message: Program started/).to_stdout
      end

      it "shows elapsed time with caller" do
        expect { subject }.to output(/InterviewBase::Program#call - Elapsed time:/).to_stdout
      end
    end
  end
end
