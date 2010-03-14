require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class VideosSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://services.sapo.pt/Videos"

  Methods = [
    [ "http://services.sapo.pt/definitions/AddVideoPost",
      "addVideoPost",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "AddVideoPost"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "AddVideoPostResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/AddVideoToPlaylist",
      "addVideoToPlaylist",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "AddVideoToPlaylist"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "AddVideoToPlaylistResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/CheckVideo",
      "checkVideo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "CheckVideo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "CheckVideoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/CreateUser",
      "createUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "CreateUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "CreateUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/DeleteVideo",
      "deleteVideo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "DeleteVideo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "DeleteVideoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/EditVideo",
      "editVideo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "EditVideo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "EditVideoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/GetEncodeParameters",
      "getEncodeParameters",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "GetEncodeParameters"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "GetEncodeParametersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/GetEncodeProfilesForUser",
      "getEncodeProfilesForUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "GetEncodeProfilesForUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "GetEncodeProfilesForUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/GetUserInfo",
      "getUserInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "GetUserInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "GetUserInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/ListUserPlaylists",
      "listUserPlaylists",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "ListUserPlaylists"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "ListUserPlaylistsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/ListVideosFromPlaylist",
      "listVideosFromPlaylist",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "ListVideosFromPlaylist"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "ListVideosFromPlaylistResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/NotifyComment",
      "notifyComment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "NotifyComment"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "NotifyCommentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/Query",
      "query",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "Query"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "QueryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/RemoveVideoFromPlaylist",
      "removeVideoFromPlaylist",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "RemoveVideoFromPlaylist"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "RemoveVideoFromPlaylistResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/ListCategories",
      "listCategories",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "ListCategories"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "ListCategoriesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://services.sapo.pt/definitions/AddVideo",
      "addVideo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "AddVideo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://services.sapo.pt/definitions", "AddVideoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end



