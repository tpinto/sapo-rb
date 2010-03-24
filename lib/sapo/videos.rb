module Sapo
  class Videos
    attr_accessor :uri, :connector, :https
    
    def initialize(connector)
      @connector = connector
      @https = connector.https
    end
    
    def deleteVideo(randname)
      request = %Q|<DeleteVideo xmlns="http://services.sapo.pt/definitions">
        <Randname>#{randname}</Randname>
      </DeleteVideo>|
      
      data = data_for(request)
      
      resp, body = do_post_request(data, headers_for(data.size, "DeleteVideo"))

      return body
    end
    
#    def uploadVideo(randname, local_path)
#=begin
#  <form action="http://upload01.videos.sapo.pt/upload_token.html" method="post" enctype="multipart/form-data">
#    <input type="file" name="content_file"> 
#    <input type="hidden" name="redir" value="http://videos.sapo.pt"> 
#    <input type="hidden" name="token" value="TOKEN VALUE"> 
#    <input type="submit"> 
#  </form>
#=end
#      
#      c = Curl::Easy.new("http://upload01.videos.sapo.pt/upload_token.html")
#      c.multipart_form_post = true
#      c.http_post(
#        Curl::PostField.content("token", @connector.sts.getToken(:extra_info => randname).to_s),
#        Curl::PostField.file("content_file", local_path)
#      )
#    end
    
    def checkVideo(randname)
      request = %Q|<CheckVideo xmlns="http://services.sapo.pt/definitions">
            <VideoRandname>#{randname}</VideoRandname>
          </CheckVideo>|
          
      data = data_for(request)
      
      resp, body = do_post_request(data, headers_for(data.size, "CheckVideo"))
      
      return body
    end
    
    def addVideoPost(video = {})
      boolean_to_binary_string = {
        false   => "0",
        0       => "0",
        :false  => "0",
        "false" => "0",
        true    => "1",
        1       => "1",
        :true   => "1",
        "true"  => "1"
      }
      
      request = %Q|<AddVideoPost xmlns="http://services.sapo.pt/definitions">
  <Video>
    <Title>#{video[:title]}</Title>
    <Active>#{boolean_to_binary_string[video[:active]]}</Active>
    <Synopse>#{video[:synopse]}</Synopse>
    <Subtitle>#{video[:subtitle]}</Subtitle>
    <Tags>#{video[:tags]}</Tags>
  </Video>
</AddVideoPost>|
      
      
      data = data_for(request)
            
      resp, body = do_post_request(data, headers_for(data.size, "AddVideoPost"))
      
      code = resp.code.to_i
      randname = body.scan(/<ns1:Randname>(.*)<\/ns1:Randname>/)
      
      if code == 200 and randname.any?
        return code, randname.first.to_s
      else
        return code, body
      end
    end
    
    protected
    
    def headers_for(data_size, action)
      {
        "Content-Type" => "text/xml; charset=utf-8",
        "Content-Length" => data_size.to_s,
        "SOAPAction" => %Q|"http://services.sapo.pt/definitions/#{action}"|
      }
    end
    
    def data_for(request)
      %Q|<?xml version="1.0" encoding="utf-8"?>
      <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
        <soap:Header>
          #{@connector.esb_credentials}
        </soap:Header>
        <soap:Body>
          #{request}
        </soap:Body>
      </soap:Envelope>|
    end
    
    def do_post_request(data, headers)
      @https.post("/Videos", data, headers)
    end
  end
end