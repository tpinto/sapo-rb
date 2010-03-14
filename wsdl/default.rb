require 'xsd/qname'

# {http://services.sapo.pt/definitions}ESBCredentials
#   eSBUsername - SOAP::SOAPString
#   eSBPassword - SOAP::SOAPString
#   eSBToken - SOAP::SOAPString
#   eSBRoles - ESBRoles
#   eSBTokenTimeToLive - SOAP::SOAPString
#   eSBTokenExtraInfo - SOAP::SOAPString
#   eSBPrimaryId - SOAP::SOAPString
#   eSBUserType - SOAP::SOAPString
class ESBCredentials
  attr_accessor :eSBUsername
  attr_accessor :eSBPassword
  attr_accessor :eSBToken
  attr_accessor :eSBRoles
  attr_accessor :eSBTokenTimeToLive
  attr_accessor :eSBTokenExtraInfo
  attr_accessor :eSBPrimaryId
  attr_accessor :eSBUserType

  def initialize(eSBUsername = nil, eSBPassword = nil, eSBToken = nil, eSBRoles = nil, eSBTokenTimeToLive = nil, eSBTokenExtraInfo = nil, eSBPrimaryId = nil, eSBUserType = nil)
    @eSBUsername = eSBUsername
    @eSBPassword = eSBPassword
    @eSBToken = eSBToken
    @eSBRoles = eSBRoles
    @eSBTokenTimeToLive = eSBTokenTimeToLive
    @eSBTokenExtraInfo = eSBTokenExtraInfo
    @eSBPrimaryId = eSBPrimaryId
    @eSBUserType = eSBUserType
  end
end

# {http://services.sapo.pt/definitions}ESBRoles
class ESBRoles < ::Array
end

# {http://services.sapo.pt/definitions}ArrayOfVideo
class ArrayOfVideo < ::Array
end

# {http://services.sapo.pt/definitions}ArrayOfEncodeProfile
class ArrayOfEncodeProfile < ::Array
end

# {http://services.sapo.pt/definitions}ArrayOfComment
class ArrayOfComment < ::Array
end

# {http://services.sapo.pt/definitions}VideoSubmition
#   subtitle - SOAP::SOAPString
#   synopse - SOAP::SOAPString
#   title - SOAP::SOAPString
#   active - SOAP::SOAPInt
#   fileName - SOAP::SOAPString
#   randname - SOAP::SOAPString
#   tags - SOAP::SOAPString
#   referedExternal - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   canPublish - SOAP::SOAPInt
#   canShare - SOAP::SOAPInt
class VideoSubmition
  attr_accessor :subtitle
  attr_accessor :synopse
  attr_accessor :title
  attr_accessor :active
  attr_accessor :fileName
  attr_accessor :randname
  attr_accessor :tags
  attr_accessor :referedExternal
  attr_accessor :categoryId
  attr_accessor :canPublish
  attr_accessor :canShare

  def initialize(subtitle = nil, synopse = nil, title = nil, active = nil, fileName = nil, randname = nil, tags = nil, referedExternal = nil, categoryId = nil, canPublish = nil, canShare = nil)
    @subtitle = subtitle
    @synopse = synopse
    @title = title
    @active = active
    @fileName = fileName
    @randname = randname
    @tags = tags
    @referedExternal = referedExternal
    @categoryId = categoryId
    @canPublish = canPublish
    @canShare = canShare
  end
end

# {http://services.sapo.pt/definitions}Comment
#   date - SOAP::SOAPString
#   nickname - SOAP::SOAPString
#   website - SOAP::SOAPString
#   body - SOAP::SOAPString
class Comment
  attr_accessor :date
  attr_accessor :nickname
  attr_accessor :website
  attr_accessor :body

  def initialize(date = nil, nickname = nil, website = nil, body = nil)
    @date = date
    @nickname = nickname
    @website = website
    @body = body
  end
end

# {http://services.sapo.pt/definitions}Video
#   id - SOAP::SOAPInt
#   active - SOAP::SOAPInt
#   creationDate - SOAP::SOAPString
#   length - SOAP::SOAPInt
#   pending - SOAP::SOAPInt
#   randname - SOAP::SOAPString
#   subtitle - SOAP::SOAPString
#   synopse - SOAP::SOAPString
#   title - SOAP::SOAPString
#   username - SOAP::SOAPString
#   userEmail - SOAP::SOAPString
#   uRL - SOAP::SOAPString
#   thumbnail - SOAP::SOAPString
#   embed - SOAP::SOAPString
#   rating - SOAP::SOAPString
#   views - SOAP::SOAPString
#   comments - SOAP::SOAPString
#   referedExternal - SOAP::SOAPString
#   tags - SOAP::SOAPString
#   commentsContent - ArrayOfComment
#   categoryId - SOAP::SOAPInt
#   canPublish - SOAP::SOAPInt
#   canShare - SOAP::SOAPInt
class Video
  attr_accessor :id
  attr_accessor :active
  attr_accessor :creationDate
  attr_accessor :length
  attr_accessor :pending
  attr_accessor :randname
  attr_accessor :subtitle
  attr_accessor :synopse
  attr_accessor :title
  attr_accessor :username
  attr_accessor :userEmail
  attr_accessor :uRL
  attr_accessor :thumbnail
  attr_accessor :embed
  attr_accessor :rating
  attr_accessor :views
  attr_accessor :comments
  attr_accessor :referedExternal
  attr_accessor :tags
  attr_accessor :commentsContent
  attr_accessor :categoryId
  attr_accessor :canPublish
  attr_accessor :canShare

  def initialize(id = nil, active = nil, creationDate = nil, length = nil, pending = nil, randname = nil, subtitle = nil, synopse = nil, title = nil, username = nil, userEmail = nil, uRL = nil, thumbnail = nil, embed = nil, rating = nil, views = nil, comments = nil, referedExternal = nil, tags = nil, commentsContent = nil, categoryId = nil, canPublish = nil, canShare = nil)
    @id = id
    @active = active
    @creationDate = creationDate
    @length = length
    @pending = pending
    @randname = randname
    @subtitle = subtitle
    @synopse = synopse
    @title = title
    @username = username
    @userEmail = userEmail
    @uRL = uRL
    @thumbnail = thumbnail
    @embed = embed
    @rating = rating
    @views = views
    @comments = comments
    @referedExternal = referedExternal
    @tags = tags
    @commentsContent = commentsContent
    @categoryId = categoryId
    @canPublish = canPublish
    @canShare = canShare
  end
end

# {http://services.sapo.pt/definitions}User
#   id - SOAP::SOAPInt
#   active - SOAP::SOAPInt
#   banned - SOAP::SOAPInt
#   commentCaptcha - SOAP::SOAPInt
#   commentModerate - SOAP::SOAPInt
#   commentNotify - SOAP::SOAPInt
#   creationDate - SOAP::SOAPString
#   email - SOAP::SOAPString
#   lastLogin - SOAP::SOAPString
#   partner - SOAP::SOAPInt
#   uploadMail - SOAP::SOAPString
#   username - SOAP::SOAPString
#   viewAll - SOAP::SOAPInt
#   website - SOAP::SOAPString
class User
  attr_accessor :id
  attr_accessor :active
  attr_accessor :banned
  attr_accessor :commentCaptcha
  attr_accessor :commentModerate
  attr_accessor :commentNotify
  attr_accessor :creationDate
  attr_accessor :email
  attr_accessor :lastLogin
  attr_accessor :partner
  attr_accessor :uploadMail
  attr_accessor :username
  attr_accessor :viewAll
  attr_accessor :website

  def initialize(id = nil, active = nil, banned = nil, commentCaptcha = nil, commentModerate = nil, commentNotify = nil, creationDate = nil, email = nil, lastLogin = nil, partner = nil, uploadMail = nil, username = nil, viewAll = nil, website = nil)
    @id = id
    @active = active
    @banned = banned
    @commentCaptcha = commentCaptcha
    @commentModerate = commentModerate
    @commentNotify = commentNotify
    @creationDate = creationDate
    @email = email
    @lastLogin = lastLogin
    @partner = partner
    @uploadMail = uploadMail
    @username = username
    @viewAll = viewAll
    @website = website
  end
end

# {http://services.sapo.pt/definitions}Params
#   expWidth - SOAP::SOAPInt
#   expHeight - SOAP::SOAPInt
#   scaleWidth - SOAP::SOAPInt
#   scaleHeight - SOAP::SOAPInt
#   soundRate - SOAP::SOAPInt
#   soundMode - SOAP::SOAPInt
#   videoFps - SOAP::SOAPFloat
#   videoExtension - SOAP::SOAPString
#   videoBitrate - SOAP::SOAPInt
class Params
  attr_accessor :expWidth
  attr_accessor :expHeight
  attr_accessor :scaleWidth
  attr_accessor :scaleHeight
  attr_accessor :soundRate
  attr_accessor :soundMode
  attr_accessor :videoFps
  attr_accessor :videoExtension
  attr_accessor :videoBitrate

  def initialize(expWidth = nil, expHeight = nil, scaleWidth = nil, scaleHeight = nil, soundRate = nil, soundMode = nil, videoFps = nil, videoExtension = nil, videoBitrate = nil)
    @expWidth = expWidth
    @expHeight = expHeight
    @scaleWidth = scaleWidth
    @scaleHeight = scaleHeight
    @soundRate = soundRate
    @soundMode = soundMode
    @videoFps = videoFps
    @videoExtension = videoExtension
    @videoBitrate = videoBitrate
  end
end

# {http://services.sapo.pt/definitions}EncodeProfile
#   id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   extension - SOAP::SOAPString
#   toEncode - SOAP::SOAPInt
class EncodeProfile
  attr_accessor :id
  attr_accessor :name
  attr_accessor :extension
  attr_accessor :toEncode

  def initialize(id = nil, name = nil, extension = nil, toEncode = nil)
    @id = id
    @name = name
    @extension = extension
    @toEncode = toEncode
  end
end

# {http://services.sapo.pt/definitions}Playlist
#   id - SOAP::SOAPInt
#   active - SOAP::SOAPInt
#   creationDate - SOAP::SOAPString
#   code - SOAP::SOAPString
#   description - SOAP::SOAPString
#   title - SOAP::SOAPString
#   tags - SOAP::SOAPString
class Playlist
  attr_accessor :id
  attr_accessor :active
  attr_accessor :creationDate
  attr_accessor :code
  attr_accessor :description
  attr_accessor :title
  attr_accessor :tags

  def initialize(id = nil, active = nil, creationDate = nil, code = nil, description = nil, title = nil, tags = nil)
    @id = id
    @active = active
    @creationDate = creationDate
    @code = code
    @description = description
    @title = title
    @tags = tags
  end
end

# {http://services.sapo.pt/definitions}ArrayOfPlaylist
class ArrayOfPlaylist < ::Array
end

# {http://services.sapo.pt/definitions}Category
#   id - SOAP::SOAPInt
#   name - SOAP::SOAPString
class Category
  attr_accessor :id
  attr_accessor :name

  def initialize(id = nil, name = nil)
    @id = id
    @name = name
  end
end

# {http://services.sapo.pt/definitions}ArrayOfCategory
class ArrayOfCategory < ::Array
end

# {http://services.sapo.pt/definitions}AddVideoPost
#   video - VideoSubmition
#   email - SOAP::SOAPString
class AddVideoPost
  attr_accessor :video
  attr_accessor :email

  def initialize(video = nil, email = nil)
    @video = video
    @email = email
  end
end

# {http://services.sapo.pt/definitions}AddVideoPostResponse
#   addVideoPostResult - Video
class AddVideoPostResponse
  attr_accessor :addVideoPostResult

  def initialize(addVideoPostResult = nil)
    @addVideoPostResult = addVideoPostResult
  end
end

# {http://services.sapo.pt/definitions}AddVideoToPlaylist
#   randname - SOAP::SOAPString
#   playlist - SOAP::SOAPString
class AddVideoToPlaylist
  attr_accessor :randname
  attr_accessor :playlist

  def initialize(randname = nil, playlist = nil)
    @randname = randname
    @playlist = playlist
  end
end

# {http://services.sapo.pt/definitions}AddVideoToPlaylistResponse
class AddVideoToPlaylistResponse
  def initialize
  end
end

# {http://services.sapo.pt/definitions}CheckVideo
#   videoId - SOAP::SOAPString
#   email - SOAP::SOAPString
#   videoRandname - SOAP::SOAPString
#   interface - SOAP::SOAPString
#   showComments - SOAP::SOAPInt
class CheckVideo
  attr_accessor :videoId
  attr_accessor :email
  attr_accessor :videoRandname
  attr_accessor :interface
  attr_accessor :showComments

  def initialize(videoId = nil, email = nil, videoRandname = nil, interface = nil, showComments = nil)
    @videoId = videoId
    @email = email
    @videoRandname = videoRandname
    @interface = interface
    @showComments = showComments
  end
end

# {http://services.sapo.pt/definitions}CheckVideoResponse
#   checkVideoResult - Video
class CheckVideoResponse
  attr_accessor :checkVideoResult

  def initialize(checkVideoResult = nil)
    @checkVideoResult = checkVideoResult
  end
end

# {http://services.sapo.pt/definitions}CreateUser
#   email - SOAP::SOAPString
#   username - SOAP::SOAPString
#   newsLetter - SOAP::SOAPInt
class CreateUser
  attr_accessor :email
  attr_accessor :username
  attr_accessor :newsLetter

  def initialize(email = nil, username = nil, newsLetter = nil)
    @email = email
    @username = username
    @newsLetter = newsLetter
  end
end

# {http://services.sapo.pt/definitions}CreateUserResponse
class CreateUserResponse
  def initialize
  end
end

# {http://services.sapo.pt/definitions}DeleteVideo
#   randname - SOAP::SOAPString
#   email - SOAP::SOAPString
class DeleteVideo
  attr_accessor :randname
  attr_accessor :email

  def initialize(randname = nil, email = nil)
    @randname = randname
    @email = email
  end
end

# {http://services.sapo.pt/definitions}DeleteVideoResponse
class DeleteVideoResponse
  def initialize
  end
end

# {http://services.sapo.pt/definitions}EditVideo
#   video - VideoSubmition
#   email - SOAP::SOAPString
class EditVideo
  attr_accessor :video
  attr_accessor :email

  def initialize(video = nil, email = nil)
    @video = video
    @email = email
  end
end

# {http://services.sapo.pt/definitions}EditVideoResponse
class EditVideoResponse
  def initialize
  end
end

# {http://services.sapo.pt/definitions}GetEncodeParameters
#   encId - SOAP::SOAPInt
#   idVideoWidth - SOAP::SOAPInt
#   idVideoHeight - SOAP::SOAPInt
#   idAudioBitrate - SOAP::SOAPInt
#   idAudioNch - SOAP::SOAPInt
#   idVideoFps - SOAP::SOAPFloat
class GetEncodeParameters
  attr_accessor :encId
  attr_accessor :idVideoWidth
  attr_accessor :idVideoHeight
  attr_accessor :idAudioBitrate
  attr_accessor :idAudioNch
  attr_accessor :idVideoFps

  def initialize(encId = nil, idVideoWidth = nil, idVideoHeight = nil, idAudioBitrate = nil, idAudioNch = nil, idVideoFps = nil)
    @encId = encId
    @idVideoWidth = idVideoWidth
    @idVideoHeight = idVideoHeight
    @idAudioBitrate = idAudioBitrate
    @idAudioNch = idAudioNch
    @idVideoFps = idVideoFps
  end
end

# {http://services.sapo.pt/definitions}GetEncodeParametersResponse
#   getEncodeParametersResult - Params
class GetEncodeParametersResponse
  attr_accessor :getEncodeParametersResult

  def initialize(getEncodeParametersResult = nil)
    @getEncodeParametersResult = getEncodeParametersResult
  end
end

# {http://services.sapo.pt/definitions}GetEncodeProfilesForUser
class GetEncodeProfilesForUser
  def initialize
  end
end

# {http://services.sapo.pt/definitions}GetEncodeProfilesForUserResponse
#   getEncodeProfilesForUserResult - ArrayOfEncodeProfile
class GetEncodeProfilesForUserResponse
  attr_accessor :getEncodeProfilesForUserResult

  def initialize(getEncodeProfilesForUserResult = nil)
    @getEncodeProfilesForUserResult = getEncodeProfilesForUserResult
  end
end

# {http://services.sapo.pt/definitions}GetUserInfo
#   email - SOAP::SOAPString
#   username - SOAP::SOAPString
class GetUserInfo
  attr_accessor :email
  attr_accessor :username

  def initialize(email = nil, username = nil)
    @email = email
    @username = username
  end
end

# {http://services.sapo.pt/definitions}GetUserInfoResponse
#   getUserInfoResult - User
class GetUserInfoResponse
  attr_accessor :getUserInfoResult

  def initialize(getUserInfoResult = nil)
    @getUserInfoResult = getUserInfoResult
  end
end

# {http://services.sapo.pt/definitions}ListUserPlaylists
#   interface - SOAP::SOAPString
class ListUserPlaylists
  attr_accessor :interface

  def initialize(interface = nil)
    @interface = interface
  end
end

# {http://services.sapo.pt/definitions}ListUserPlaylistsResponse
#   listUserPlaylistsResult - ArrayOfPlaylist
class ListUserPlaylistsResponse
  attr_accessor :listUserPlaylistsResult

  def initialize(listUserPlaylistsResult = nil)
    @listUserPlaylistsResult = listUserPlaylistsResult
  end
end

# {http://services.sapo.pt/definitions}ListVideosFromPlaylist
#   playlist - SOAP::SOAPString
#   interface - SOAP::SOAPString
class ListVideosFromPlaylist
  attr_accessor :playlist
  attr_accessor :interface

  def initialize(playlist = nil, interface = nil)
    @playlist = playlist
    @interface = interface
  end
end

# {http://services.sapo.pt/definitions}ListVideosFromPlaylistResponse
#   listVideosFromPlaylistResult - ArrayOfVideo
class ListVideosFromPlaylistResponse
  attr_accessor :listVideosFromPlaylistResult

  def initialize(listVideosFromPlaylistResult = nil)
    @listVideosFromPlaylistResult = listVideosFromPlaylistResult
  end
end

# {http://services.sapo.pt/definitions}NotifyComment
#   randname - SOAP::SOAPString
class NotifyComment
  attr_accessor :randname

  def initialize(randname = nil)
    @randname = randname
  end
end

# {http://services.sapo.pt/definitions}NotifyCommentResponse
class NotifyCommentResponse
  def initialize
  end
end

# {http://services.sapo.pt/definitions}Query
#   emails - SOAP::SOAPString
#   tags - SOAP::SOAPString
#   cos - SOAP::SOAPInt
#   limit - SOAP::SOAPInt
#   order - SOAP::SOAPString
#   viewAll - SOAP::SOAPInt
#   interface - SOAP::SOAPString
#   showTags - SOAP::SOAPInt
class Query
  attr_accessor :emails
  attr_accessor :tags
  attr_accessor :cos
  attr_accessor :limit
  attr_accessor :order
  attr_accessor :viewAll
  attr_accessor :interface
  attr_accessor :showTags

  def initialize(emails = nil, tags = nil, cos = nil, limit = nil, order = nil, viewAll = nil, interface = nil, showTags = nil)
    @emails = emails
    @tags = tags
    @cos = cos
    @limit = limit
    @order = order
    @viewAll = viewAll
    @interface = interface
    @showTags = showTags
  end
end

# {http://services.sapo.pt/definitions}QueryResponse
#   queryResult - ArrayOfVideo
class QueryResponse
  attr_accessor :queryResult

  def initialize(queryResult = nil)
    @queryResult = queryResult
  end
end

# {http://services.sapo.pt/definitions}RemoveVideoFromPlaylist
#   randname - SOAP::SOAPString
#   playlist - SOAP::SOAPString
class RemoveVideoFromPlaylist
  attr_accessor :randname
  attr_accessor :playlist

  def initialize(randname = nil, playlist = nil)
    @randname = randname
    @playlist = playlist
  end
end

# {http://services.sapo.pt/definitions}RemoveVideoFromPlaylistResponse
class RemoveVideoFromPlaylistResponse
  def initialize
  end
end

# {http://services.sapo.pt/definitions}ListCategories
class ListCategories
  def initialize
  end
end

# {http://services.sapo.pt/definitions}ListCategoriesResponse
#   listCategoriesResult - ArrayOfCategory
class ListCategoriesResponse
  attr_accessor :listCategoriesResult

  def initialize(listCategoriesResult = nil)
    @listCategoriesResult = listCategoriesResult
  end
end

# {http://services.sapo.pt/definitions}AddVideo
#   video - VideoSubmition
#   email - SOAP::SOAPString
class AddVideo
  attr_accessor :video
  attr_accessor :email

  def initialize(video = nil, email = nil)
    @video = video
    @email = email
  end
end

# {http://services.sapo.pt/definitions}AddVideoResponse
#   addVideoResult - Video
class AddVideoResponse
  attr_accessor :addVideoResult

  def initialize(addVideoResult = nil)
    @addVideoResult = addVideoResult
  end
end
