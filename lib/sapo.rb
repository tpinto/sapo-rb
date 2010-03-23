require 'rexml/document'
require 'net/https'
require 'uri'
require 'rubygems'
require 'curb'

%w[connector sts videos].each{|l| require File.join(File.dirname(__FILE__), 'sapo', "#{l}.rb") }

module SAPO
  VERSION = '0.0.7'
  
  def self.auth(email, pass)
    SAPO::Connector.new(email, pass)
  end
end