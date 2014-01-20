require File.expand_path('../methods.rb', __FILE__)
require File.expand_path('../endpoints.rb', __FILE__)
require File.expand_path('../jobs.rb', __FILE__)

module Rekognize
  module Client
    class Base
      include Rekognize::Client::Endpoints
      include Rekognize::Client::Jobs

      mattr_reader :api_key, :api_secret

      def initialize
        true
      end
    end

  end
end
