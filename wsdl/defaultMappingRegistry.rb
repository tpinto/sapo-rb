require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsDefinitions = "http://services.sapo.pt/definitions"

  EncodedRegistry.register(
    :class => ESBCredentials,
    :schema_type => XSD::QName.new(NsDefinitions, "ESBCredentials"),
    :schema_element => [
      ["eSBUsername", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBUsername")], [0, 1]],
      ["eSBPassword", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBPassword")], [0, 1]],
      ["eSBToken", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBToken")], [0, 1]],
      ["eSBRoles", ["ESBRoles", XSD::QName.new(NsDefinitions, "ESBRoles")], [0, 1]],
      ["eSBTokenTimeToLive", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBTokenTimeToLive")], [0, 1]],
      ["eSBTokenExtraInfo", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBTokenExtraInfo")], [0, 1]],
      ["eSBPrimaryId", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBPrimaryId")], [0, 1]],
      ["eSBUserType", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBUserType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ESBRoles,
    :schema_type => XSD::QName.new(NsDefinitions, "ESBRoles"),
    :schema_element => [
      ["eSBRole", ["SOAP::SOAPString[]", XSD::QName.new(NsDefinitions, "ESBRole")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfVideo,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfVideo"),
    :schema_element => [
      ["item", "Video[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfEncodeProfile,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfEncodeProfile"),
    :schema_element => [
      ["item", "EncodeProfile[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfComment,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfComment"),
    :schema_element => [
      ["item", "Comment[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => VideoSubmition,
    :schema_type => XSD::QName.new(NsDefinitions, "VideoSubmition"),
    :schema_element => [
      ["subtitle", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Subtitle")]],
      ["synopse", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Synopse")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Title")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["fileName", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "FileName")], [0, 1]],
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")], [0, 1]],
      ["tags", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Tags")]],
      ["referedExternal", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ReferedExternal")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CategoryId")], [0, 1]],
      ["canPublish", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanPublish")], [0, 1]],
      ["canShare", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanShare")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Comment,
    :schema_type => XSD::QName.new(NsDefinitions, "Comment"),
    :schema_element => [
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Date")]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Nickname")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Website")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Body")]]
    ]
  )

  EncodedRegistry.register(
    :class => Video,
    :schema_type => XSD::QName.new(NsDefinitions, "Video"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["creationDate", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "CreationDate")]],
      ["length", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Length")]],
      ["pending", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Pending")], [0, 1]],
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")], [0, 1]],
      ["subtitle", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Subtitle")]],
      ["synopse", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Synopse")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Title")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Username")], [0, 1]],
      ["userEmail", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "UserEmail")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "URL")]],
      ["thumbnail", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Thumbnail")]],
      ["embed", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Embed")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Rating")]],
      ["views", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Views")]],
      ["comments", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Comments")]],
      ["referedExternal", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ReferedExternal")]],
      ["tags", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Tags")], [0, 1]],
      ["commentsContent", ["ArrayOfComment", XSD::QName.new(NsDefinitions, "CommentsContent")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CategoryId")], [0, 1]],
      ["canPublish", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanPublish")], [0, 1]],
      ["canShare", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanShare")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => User,
    :schema_type => XSD::QName.new(NsDefinitions, "User"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["banned", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Banned")]],
      ["commentCaptcha", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CommentCaptcha")]],
      ["commentModerate", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CommentModerate")]],
      ["commentNotify", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CommentNotify")]],
      ["creationDate", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "CreationDate")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")]],
      ["lastLogin", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "LastLogin")]],
      ["partner", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Partner")]],
      ["uploadMail", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "UploadMail")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Username")]],
      ["viewAll", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ViewAll")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Website")]]
    ]
  )

  EncodedRegistry.register(
    :class => Params,
    :schema_type => XSD::QName.new(NsDefinitions, "Params"),
    :schema_element => [
      ["expWidth", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ExpWidth")]],
      ["expHeight", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ExpHeight")]],
      ["scaleWidth", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ScaleWidth")]],
      ["scaleHeight", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ScaleHeight")]],
      ["soundRate", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "SoundRate")]],
      ["soundMode", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "SoundMode")]],
      ["videoFps", ["SOAP::SOAPFloat", XSD::QName.new(NsDefinitions, "VideoFps")]],
      ["videoExtension", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "VideoExtension")]],
      ["videoBitrate", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "VideoBitrate")]]
    ]
  )

  EncodedRegistry.register(
    :class => EncodeProfile,
    :schema_type => XSD::QName.new(NsDefinitions, "EncodeProfile"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Name")]],
      ["extension", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Extension")]],
      ["toEncode", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ToEncode")]]
    ]
  )

  EncodedRegistry.register(
    :class => Playlist,
    :schema_type => XSD::QName.new(NsDefinitions, "Playlist"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["creationDate", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "CreationDate")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Code")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Description")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Title")]],
      ["tags", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Tags")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfPlaylist,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfPlaylist"),
    :schema_element => [
      ["item", "Playlist[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Category,
    :schema_type => XSD::QName.new(NsDefinitions, "Category"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Name")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCategory,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfCategory"),
    :schema_element => [
      ["item", "Category[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ESBCredentials,
    :schema_type => XSD::QName.new(NsDefinitions, "ESBCredentials"),
    :schema_element => [
      ["eSBUsername", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBUsername")], [0, 1]],
      ["eSBPassword", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBPassword")], [0, 1]],
      ["eSBToken", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBToken")], [0, 1]],
      ["eSBRoles", ["ESBRoles", XSD::QName.new(NsDefinitions, "ESBRoles")], [0, 1]],
      ["eSBTokenTimeToLive", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBTokenTimeToLive")], [0, 1]],
      ["eSBTokenExtraInfo", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBTokenExtraInfo")], [0, 1]],
      ["eSBPrimaryId", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBPrimaryId")], [0, 1]],
      ["eSBUserType", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBUserType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ESBRoles,
    :schema_type => XSD::QName.new(NsDefinitions, "ESBRoles"),
    :schema_element => [
      ["eSBRole", ["SOAP::SOAPString[]", XSD::QName.new(NsDefinitions, "ESBRole")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfVideo,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfVideo"),
    :schema_element => [
      ["item", "Video[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfEncodeProfile,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfEncodeProfile"),
    :schema_element => [
      ["item", "EncodeProfile[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfComment,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfComment"),
    :schema_element => [
      ["item", "Comment[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => VideoSubmition,
    :schema_type => XSD::QName.new(NsDefinitions, "VideoSubmition"),
    :schema_element => [
      ["subtitle", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Subtitle")]],
      ["synopse", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Synopse")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Title")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["fileName", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "FileName")], [0, 1]],
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")], [0, 1]],
      ["tags", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Tags")]],
      ["referedExternal", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ReferedExternal")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CategoryId")], [0, 1]],
      ["canPublish", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanPublish")], [0, 1]],
      ["canShare", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanShare")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Comment,
    :schema_type => XSD::QName.new(NsDefinitions, "Comment"),
    :schema_element => [
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Date")]],
      ["nickname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Nickname")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Website")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Body")]]
    ]
  )

  LiteralRegistry.register(
    :class => Video,
    :schema_type => XSD::QName.new(NsDefinitions, "Video"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["creationDate", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "CreationDate")]],
      ["length", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Length")]],
      ["pending", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Pending")], [0, 1]],
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")], [0, 1]],
      ["subtitle", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Subtitle")]],
      ["synopse", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Synopse")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Title")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Username")], [0, 1]],
      ["userEmail", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "UserEmail")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "URL")]],
      ["thumbnail", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Thumbnail")]],
      ["embed", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Embed")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Rating")]],
      ["views", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Views")]],
      ["comments", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Comments")]],
      ["referedExternal", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ReferedExternal")]],
      ["tags", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Tags")], [0, 1]],
      ["commentsContent", ["ArrayOfComment", XSD::QName.new(NsDefinitions, "CommentsContent")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CategoryId")], [0, 1]],
      ["canPublish", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanPublish")], [0, 1]],
      ["canShare", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CanShare")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => User,
    :schema_type => XSD::QName.new(NsDefinitions, "User"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["banned", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Banned")]],
      ["commentCaptcha", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CommentCaptcha")]],
      ["commentModerate", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CommentModerate")]],
      ["commentNotify", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "CommentNotify")]],
      ["creationDate", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "CreationDate")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")]],
      ["lastLogin", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "LastLogin")]],
      ["partner", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Partner")]],
      ["uploadMail", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "UploadMail")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Username")]],
      ["viewAll", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ViewAll")]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Website")]]
    ]
  )

  LiteralRegistry.register(
    :class => Params,
    :schema_type => XSD::QName.new(NsDefinitions, "Params"),
    :schema_element => [
      ["expWidth", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ExpWidth")]],
      ["expHeight", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ExpHeight")]],
      ["scaleWidth", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ScaleWidth")]],
      ["scaleHeight", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ScaleHeight")]],
      ["soundRate", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "SoundRate")]],
      ["soundMode", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "SoundMode")]],
      ["videoFps", ["SOAP::SOAPFloat", XSD::QName.new(NsDefinitions, "VideoFps")]],
      ["videoExtension", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "VideoExtension")]],
      ["videoBitrate", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "VideoBitrate")]]
    ]
  )

  LiteralRegistry.register(
    :class => EncodeProfile,
    :schema_type => XSD::QName.new(NsDefinitions, "EncodeProfile"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Name")]],
      ["extension", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Extension")]],
      ["toEncode", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ToEncode")]]
    ]
  )

  LiteralRegistry.register(
    :class => Playlist,
    :schema_type => XSD::QName.new(NsDefinitions, "Playlist"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Active")]],
      ["creationDate", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "CreationDate")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Code")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Description")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Title")]],
      ["tags", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Tags")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPlaylist,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfPlaylist"),
    :schema_element => [
      ["item", "Playlist[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Category,
    :schema_type => XSD::QName.new(NsDefinitions, "Category"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCategory,
    :schema_type => XSD::QName.new(NsDefinitions, "ArrayOfCategory"),
    :schema_element => [
      ["item", "Category[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddVideoPost,
    :schema_name => XSD::QName.new(NsDefinitions, "AddVideoPost"),
    :schema_element => [
      ["video", ["VideoSubmition", XSD::QName.new(NsDefinitions, "Video")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddVideoPostResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "AddVideoPostResponse"),
    :schema_element => [
      ["addVideoPostResult", ["Video", XSD::QName.new(NsDefinitions, "AddVideoPostResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddVideoToPlaylist,
    :schema_name => XSD::QName.new(NsDefinitions, "AddVideoToPlaylist"),
    :schema_element => [
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")]],
      ["playlist", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Playlist")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddVideoToPlaylistResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "AddVideoToPlaylistResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => CheckVideo,
    :schema_name => XSD::QName.new(NsDefinitions, "CheckVideo"),
    :schema_element => [
      ["videoId", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "VideoId")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")], [0, 1]],
      ["videoRandname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "VideoRandname")], [0, 1]],
      ["interface", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Interface")], [0, 1]],
      ["showComments", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ShowComments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckVideoResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "CheckVideoResponse"),
    :schema_element => [
      ["checkVideoResult", ["Video", XSD::QName.new(NsDefinitions, "CheckVideoResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateUser,
    :schema_name => XSD::QName.new(NsDefinitions, "CreateUser"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Username")]],
      ["newsLetter", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "NewsLetter")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateUserResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "CreateUserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteVideo,
    :schema_name => XSD::QName.new(NsDefinitions, "DeleteVideo"),
    :schema_element => [
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteVideoResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "DeleteVideoResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => EditVideo,
    :schema_name => XSD::QName.new(NsDefinitions, "EditVideo"),
    :schema_element => [
      ["video", ["VideoSubmition", XSD::QName.new(NsDefinitions, "Video")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EditVideoResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "EditVideoResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetEncodeParameters,
    :schema_name => XSD::QName.new(NsDefinitions, "GetEncodeParameters"),
    :schema_element => [
      ["encId", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "EncId")], [0, 1]],
      ["idVideoWidth", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "IdVideoWidth")], [0, 1]],
      ["idVideoHeight", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "IdVideoHeight")], [0, 1]],
      ["idAudioBitrate", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "IdAudioBitrate")], [0, 1]],
      ["idAudioNch", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "IdAudioNch")], [0, 1]],
      ["idVideoFps", ["SOAP::SOAPFloat", XSD::QName.new(NsDefinitions, "IdVideoFps")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetEncodeParametersResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "GetEncodeParametersResponse"),
    :schema_element => [
      ["getEncodeParametersResult", ["Params", XSD::QName.new(NsDefinitions, "GetEncodeParametersResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetEncodeProfilesForUser,
    :schema_name => XSD::QName.new(NsDefinitions, "GetEncodeProfilesForUser"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetEncodeProfilesForUserResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "GetEncodeProfilesForUserResponse"),
    :schema_element => [
      ["getEncodeProfilesForUserResult", ["ArrayOfEncodeProfile", XSD::QName.new(NsDefinitions, "GetEncodeProfilesForUserResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfo,
    :schema_name => XSD::QName.new(NsDefinitions, "GetUserInfo"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Username")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "GetUserInfoResponse"),
    :schema_element => [
      ["getUserInfoResult", ["User", XSD::QName.new(NsDefinitions, "GetUserInfoResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListUserPlaylists,
    :schema_name => XSD::QName.new(NsDefinitions, "ListUserPlaylists"),
    :schema_element => [
      ["interface", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Interface")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListUserPlaylistsResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "ListUserPlaylistsResponse"),
    :schema_element => [
      ["listUserPlaylistsResult", ["ArrayOfPlaylist", XSD::QName.new(NsDefinitions, "ListUserPlaylistsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListVideosFromPlaylist,
    :schema_name => XSD::QName.new(NsDefinitions, "ListVideosFromPlaylist"),
    :schema_element => [
      ["playlist", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Playlist")]],
      ["interface", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Interface")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListVideosFromPlaylistResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "ListVideosFromPlaylistResponse"),
    :schema_element => [
      ["listVideosFromPlaylistResult", ["ArrayOfVideo", XSD::QName.new(NsDefinitions, "ListVideosFromPlaylistResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NotifyComment,
    :schema_name => XSD::QName.new(NsDefinitions, "NotifyComment"),
    :schema_element => [
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NotifyCommentResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "NotifyCommentResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Query,
    :schema_name => XSD::QName.new(NsDefinitions, "Query"),
    :schema_element => [
      ["emails", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Emails")], [0, 1]],
      ["tags", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Tags")], [0, 1]],
      ["cos", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Cos")], [0, 1]],
      ["limit", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "Limit")], [0, 1]],
      ["order", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Order")], [0, 1]],
      ["viewAll", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ViewAll")], [0, 1]],
      ["interface", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Interface")], [0, 1]],
      ["showTags", ["SOAP::SOAPInt", XSD::QName.new(NsDefinitions, "ShowTags")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "QueryResponse"),
    :schema_element => [
      ["queryResult", ["ArrayOfVideo", XSD::QName.new(NsDefinitions, "QueryResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveVideoFromPlaylist,
    :schema_name => XSD::QName.new(NsDefinitions, "RemoveVideoFromPlaylist"),
    :schema_element => [
      ["randname", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Randname")], [0, 1]],
      ["playlist", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Playlist")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveVideoFromPlaylistResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "RemoveVideoFromPlaylistResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ListCategories,
    :schema_name => XSD::QName.new(NsDefinitions, "ListCategories"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ListCategoriesResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "ListCategoriesResponse"),
    :schema_element => [
      ["listCategoriesResult", ["ArrayOfCategory", XSD::QName.new(NsDefinitions, "ListCategoriesResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddVideo,
    :schema_name => XSD::QName.new(NsDefinitions, "AddVideo"),
    :schema_element => [
      ["video", ["VideoSubmition", XSD::QName.new(NsDefinitions, "Video")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddVideoResponse,
    :schema_name => XSD::QName.new(NsDefinitions, "AddVideoResponse"),
    :schema_element => [
      ["addVideoResult", ["Video", XSD::QName.new(NsDefinitions, "AddVideoResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ESBCredentials,
    :schema_name => XSD::QName.new(NsDefinitions, "ESBCredentials"),
    :schema_element => [
      ["eSBUsername", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBUsername")], [0, 1]],
      ["eSBPassword", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBPassword")], [0, 1]],
      ["eSBToken", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBToken")], [0, 1]],
      ["eSBRoles", ["ESBRoles", XSD::QName.new(NsDefinitions, "ESBRoles")], [0, 1]],
      ["eSBTokenTimeToLive", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBTokenTimeToLive")], [0, 1]],
      ["eSBTokenExtraInfo", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBTokenExtraInfo")], [0, 1]],
      ["eSBPrimaryId", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBPrimaryId")], [0, 1]],
      ["eSBUserType", ["SOAP::SOAPString", XSD::QName.new(NsDefinitions, "ESBUserType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ESBRoles,
    :schema_name => XSD::QName.new(NsDefinitions, "ESBRoles"),
    :schema_element => [
      ["eSBRole", ["SOAP::SOAPString[]", XSD::QName.new(NsDefinitions, "ESBRole")], [1, nil]]
    ]
  )
end
