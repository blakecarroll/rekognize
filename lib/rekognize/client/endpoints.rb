module Rekognize
  module Client
    module Endpoints
      def configure_payload(opts={})
        base_uri + opts.to_params
      end

      def get_request(uri)
         response = RestClient.get(uri)
         parse ? JSON::parse(response) : response
      end

      def post_request(opts)
        response =  RestClient.post(base_uri, opts)
        parse ? JSON::parse(response) : response
      end
    end
  end
end
