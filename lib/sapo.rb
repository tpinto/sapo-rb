module SAPO
  VERSION = '0.0.2'
end

require 'cgi'
require 'json'
require 'rexml/document'
require 'net/http'
require 'net/https'
require 'open-uri'
require 'openssl'

module OpenSSL
  module SSL
    remove_const :VERIFY_PEER
  end
end
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

require 'sapo/adsl'
require 'sapo/adwords'
require 'sapo/auto'
require 'sapo/blogs'
require 'sapo/jobs'
require 'sapo/photos'
require 'sapo/shopping'
require 'sapo/traffic'
require 'sapo/id'