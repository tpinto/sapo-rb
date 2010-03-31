module Sapo
  class Connector
    attr_accessor :email, :password, :videos, :sts, :http, :https, :uri, :endpoint, :use_ssl, :upload_url
    
    def initialize(email, password, options = {})
      @email = email
      @password = password
      
      @uri = URI.parse(options[:endpoint] || "https://services.sapo.pt")
      @use_ssl = options[:ssl] || (@uri.scheme == "https")
      @upload_url = options[:upload_url] || "http://upload01.videos.sapo.pt/upload_token.html"
      
      if ssl?
        @http = Net::HTTP.new(@uri.host, 443)
        @http.use_ssl = true
        @http.verify_mode = OpenSSL::SSL::VERIFY_PEER
        @http.ca_file = File.join(File.dirname(__FILE__), "cacert.pem")
      else
        @http = Net::HTTP.new(@uri.host, 80)
        @http.use_ssl = false
      end
    end
    
    def ssl?
      @use_ssl
    end
    
    def do_post(path, data, headers)
      path = @uri.path.empty? ? path : @uri.path
      @http.post2(path, data, headers)
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