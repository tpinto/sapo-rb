module Sapo
  class Connector
    attr_accessor :email, :password, :videos, :sts, :http, :https
    
    def initialize(credentials = {})
      @email = credentials[:email]
      @password = credentials[:password]
      
      @https = Net::HTTP.new("services.sapo.pt", 443)
      @https.use_ssl = true
      @https.verify_mode = OpenSSL::SSL::VERIFY_PEER
      @https.ca_file = File.join(File.dirname(__FILE__), "cacert.pem")
      
      @http = Net::HTTP.new("services.sapo.pt", 80)
      @http.use_ssl = false
    end
    
    def esb_credentials
      %Q|<ESBCredentials xmlns="http://services.sapo.pt/definitions">
        <ESBUsername>#{@email}</ESBUsername>
        <ESBPassword>#{@password}</ESBPassword>
      </ESBCredentials>|
    end
    
    def videos
      @videos ||= Videos.new(self)
    end
    
    def sts
      @sts ||= STS.new(self)
    end
  end
end