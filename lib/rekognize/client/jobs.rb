module Rekognize
  module Client
    module Jobs

      def face_detect(opts={})
        opts.assert_valid_keys(:jobs, :urls)
        get_request configure_payload(opts)
      end

      def face_add(opts={})
        opts.assert_valid_keys(:jobs, :urls, :name_space, :user_id, :tag)
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

      def face_crawl(opts={})
        opts.assert_valid_keys(:jobs, :fb_id, :access_token, :name_space, :user_id)
        post_request opts
      end

      def face_recognize(opts={})
        opts.assert_valid_keys(:jobs, :urls, :name_space, :user_id, :num_return, :tags)
        post_request opts
      end

      def face_visualize(opts={})
        opts.assert_valid_keys(:jobs, :name_space, :user_id, :tags, :num_tag_return, :num_img_return_pertag)
        post_request opts
      end

      def face_search(opts={})
        opts.assert_valid_keys(:jobs, :urls, :name_space, :user_id, :num_return)
        post_request opts
      end

      def face_rename(opts={})
        opts.assert_valid_keys(:jobs, :tag, :new_tag, :name_space, :user_id, :img_index)
        post_request opts
      end

      def face_stats(opts={})
        opts.assert_valid_keys(:jobs)
        post_request opts
      end

    end
  end
end
