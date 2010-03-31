require 'rubygems'
require 'rexml/document'
require 'net/https'
require 'uri'
require 'open-uri'
require 'json'

%w[adwords adsl auto blogs connector id jobs photos shopping sts traffic videos].each{|l| require File.join(File.dirname(__FILE__), 'sapo', "#{l}.rb") }

module Sapo
  VERSION = '0.0.10'
  
  def self.auth(l, p, o = {})
    Connector.new(l, p, o)
  end
end