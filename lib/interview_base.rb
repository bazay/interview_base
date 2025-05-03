# frozen_string_literal: true

require_relative "interview_base/version"

module InterviewBase
  class Error < StandardError; end

  class Program
    def initialize(debug: false)
      @debug = debug
    end

    def call
      debug_message("Debug message: Program started")
      # write your code here
    end

    private

    def debug_message(message)
      puts message if @debug
    end
  end
end
