module Rekognize
  module Client
    module Endpoints

      def configure_payload(opts={})
        base_uri = "http://rekognition.com/func/api/?api_key=#{api_key}&api_secret=#{api_secret}"
        base_uri + opts.to_params
      end

      def get_request(uri)
        JSON.parse RestClient.get(uri)
      end

      def post_request(opts)
        JSON.parse RestClient.post(base_uri, opts)
      end
    end
  end
end
