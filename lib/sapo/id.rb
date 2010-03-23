module Sapo
  class ID
    attr_accessor :email, :password, :primary, :token
    
    def initialize(email, password)
      self.email = email
      self.password = password
      
      uri = URI.parse("https://services.sapo.pt/STS/GetPrimaryId?ESBUsername=#{self.email}&ESBPassword=#{self.password}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_PEER
      http.ca_file = File.join(File.dirname(__FILE__), "cacert.pem")
      http.start {
        http.request_get(uri.path+"?"+uri.query) {|res|
            output = REXML::Document.new(res.body)
            begin
              self.primary = output.root.elements['PrimaryId'].text
              self.token = output.root.elements['ESBToken'].text
            rescue
              raise "Wrong credentials"
              return nil
            end
          }
      }
    end
  end
end