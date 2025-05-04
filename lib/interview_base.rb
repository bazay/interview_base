# frozen_string_literal: true

require_relative "interview_base/version"

module InterviewBase
  class Error < StandardError; end

  class Program
    def initialize(debug: false)
      @debug = debug
    end

    def call
      with_timings do
        debug_message("Debug message: Program started")
        # write your code here
      end
    end

    private

    def debug_message(message)
      puts message if @debug
    end

    def with_timings(&block)
      caller_method_name = self.class.name + "##{caller_locations(1,1)[0].label}"
      start_time = Time.now
      result = block.call
      end_time = Time.now
      elapsed_time = end_time - start_time
      debug_message("#{caller_method_name} - Elapsed time: #{elapsed_time} seconds")

      result
    end
  end
end
