require File.expand_path('../endpoints.rb', __FILE__)
require File.expand_path('../jobs.rb', __FILE__)

module Rekognize
  module Client
    class Base

      include Rekognize::Client::Endpoints
      include Rekognize::Client::Jobs

      attr_accessor :api_key, :api_secret

      def initialize(opts={})
        opts.assert_valid_keys(:api_key, :api_secret)
        @api_key, @api_secret = [opts[:api_key], opts[:api_secret]]
      end
    end
  end
end
