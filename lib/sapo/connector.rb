module SAPO
  class Connector
    attr_accessor :email, :password, :videos, :sts, :http, :https
    
    def initialize(email, pass)
      @email = email
      @password = pass
      
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
      @videos ||= SAPO::Videos.new(self)
    end
    
    def sts
      @sts ||= SAPO::STS.new(self)
    end
  end
end