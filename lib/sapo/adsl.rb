module SAPO
  module ADSL
    def self.has_coverage?(phone_number)
      response = REXML::Document.new(Net::HTTP.get(URI.parse("http://services.sapo.pt/ADSL/HasCoverage?telephoneNumber=#{phone_number}")))
      if response.root.text == "true"
        return true
      else
        return false
      end
    end
  end
end