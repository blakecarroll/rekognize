module Rekognize
  module Client
    module Endpoints
      def configure_payload(opts={})
        base_uri + opts.to_params
      end

      def get_request(uri)
         RestClient.get(uri)
      end

      def post_request(opts)
        RestClient.post(base_uri, opts)
      end
    end
  end
end
