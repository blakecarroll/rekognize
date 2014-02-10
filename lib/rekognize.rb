require "rekognize/version"
require 'rubygems'
require 'rest-client'
require 'json'

require File.expand_path('../misc/hash.rb', __FILE__)
require File.expand_path('../rekognize/client.rb', __FILE__)

module Rekognize
  def self.get_client(opts={})
    Rekognize::Client::Base.new(opts.assert_valid_keys(:api_key, :api_secret))
  end

end
