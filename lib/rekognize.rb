require "rekognize/version"
require 'rest-client'
require 'json'

require File.expand_path('../rekognize/client', __FILE__)

module Rekognize
  def self.hi
    puts RestClient
  end
end
