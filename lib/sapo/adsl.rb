require File.join(File.dirname(__FILE__), '..', 'sapo.rb')
require 'open-uri'
require 'rexml/document'

module SAPO
  module ADSL
    def self.has_coverage?(phone_number)
      response = REXML::Document.new(open("http://services.sapo.pt/ADSL/HasCoverage?telephoneNumber=#{phone_number}").read)
      if response.root.text == "true"
        return true
      else
        return false
      end
    end
  end
end