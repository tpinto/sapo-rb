require 'rubygems'
require 'rexml/document'
require 'net/https'
require 'uri'
require 'curb'
require 'open-uri'
require 'json'

%w[adwords adsl auto blogs connector id jobs photos shopping sts traffic videos].each{|l| require File.join(File.dirname(__FILE__), 'sapo', "#{l}.rb") }

module Sapo
  VERSION = '0.0.9'
  
  def self.auth(credentials = {})
    Connector.new(credentials)
  end
end