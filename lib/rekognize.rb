require "rekognize/version"
require 'rest-client'
require 'json'

require File.expand_path('../misc/hash.rb', __FILE__)
require File.expand_path('../rekognize/client.rb', __FILE__)

module Rekognize
  def self.get_client
    Rekognize::Client::Base.new
  end

end
