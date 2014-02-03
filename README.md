# Rekognize

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
 
