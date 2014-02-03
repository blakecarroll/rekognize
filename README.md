# Rekognize

Sign up for your api credentials at: 'http://rekognition.com/user/create'

## Installation

Add this line to your application's Gemfile:

    gem 'rekognize'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rekognize

## Usage

    irb:
    require 'rekognize'
    >> true

    client = Rekognize::Client::Base.new(api_key: YOUR_API_KEY, api_secret: YOUR_API_SECRET)
    client.face_detect(urls: image_url/base64, jobs: 'face_detect')

## Methods
For the official documentation please refer to: 'http://rekognition.com/developer/docs'

    face_detect:
      required: [:jobs, :urls]
      optional: []
    
    face_add:
      required: [:jobs, :urls]
      optional: [:name_space, :user_id, :tag]

    face_train:
      required: [:jobs]
      optional: [:name_space, :user_id, :tags]

    face_cluster:
      required: [:jobs]
      optional: [:name_space, :user_id, :aggressiveness]
    
    face_crawl:
      required: [:jobs, :fb_id, :access_token]
      optional: [:name_space, :user_id]

    face_recognize:
      required: [:jobs, :urls]
      optional: [:name_space, :user_id, :num_return, :tags]

    face_visualize:
      required: [:jobs]
      optional: [:name_space, :user_id, :tags, :num_tag_return, :num_img_return_pertag]
    
    face_search:
      required: [:jobs, :urls]
      optional: [:name_space, :user_id, :num_return]

    face_delete:
      required: [:jobs, :name_space]
      optional: [:user_id, :tag, :img_index]

    face_rename:
      required: [:jobs, :tag, :new_tag, :user_id]
      optional: [:img_index]

    face_stats:
      required: [:jobs]

    scene_understanding:
      required: [:jobs, :urls]
