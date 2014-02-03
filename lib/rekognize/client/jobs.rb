module Rekognize
  module Client
    module Jobs

      def face_detect(opts={})
        opts.assert_valid_keys(:jobs, :urls)
        get_request configure_payload(opts)
      end

      def face_add(opts={})
        opts.assert_valid_keys(:jobs, :urls, :namespace, :user_id, :tag)
        post_request opts
      end

      def face_delete(opts={})
        opts.assert_valid_keys(:jobs, :name_space, :user_id, :tag, :img_index)
        get_request configure_payload(opts)
      end

      def face_train(opts={})
        opts.assert_valid_keys(:jobs, :name_space, :user_id, :tags)
        post_request opts
      end

      def face_cluster(opts={})
        opts.assert_valid_keys(:jobs, :name_space, :user_id, :aggressiveness)
        post_request opts
      end

    end
  end
end
