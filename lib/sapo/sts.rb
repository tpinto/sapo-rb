module Sapo
  class STS
    attr_accessor :endpoint, :connector, :https
    
    def initialize(connector)
      @connector = connector
      @https = connector.https
    end
    
    def getToken(options = {})
      request = %Q|<?xml version="1.0" encoding="utf-8"?>
      <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
        <soap:Body>
          <GetToken xmlns="http://services.sapo.pt/definitions">
            <ESBCredentials xmlns="http://services.sapo.pt/definitions">
              <ESBUsername>#{@connector.email}</ESBUsername>
              <ESBPassword>#{@connector.password}</ESBPassword>
              <ESBTokenExtraInfo>#{options[:extra_info]}</ESBTokenExtraInfo>
            </ESBCredentials>
            <JSON>false</JSON>
          </GetToken>
        </soap:Body>
      </soap:Envelope>|
      
      headers = {
        "Content-Type" => "text/xml; charset=utf-8",
        "Content-Length" => request.size.to_s,
        "SOAPAction" => %Q|"http://services.sapo.pt/definitions/GetToken"|
      }
      
      resp, body = @https.post("/STS", request, headers)
            
      token = body.scan(/<GetTokenResult>(.*)<\/GetTokenResult>/)
      
      if token.any?
        return token.first
      else
        return body
      end
    end
  end
end