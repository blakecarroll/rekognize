module Rekognize
  module Client
    module Endpoints
      def configure_payload(opts={})
        base_uri + opts.to_params
      end

      def fire_request(uri, parse=true)
        response = RestClient.get(uri)
        parse ? JSON::parse(response) : response
      end
    end
  end
end
