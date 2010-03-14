#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = VideosSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddVideoPost(parameters)
#
# ARGS
#   parameters      AddVideoPost - {http://services.sapo.pt/definitions}AddVideoPost
#
# RETURNS
#   parameters      AddVideoPostResponse - {http://services.sapo.pt/definitions}AddVideoPostResponse
#
parameters = nil
puts obj.addVideoPost(parameters)

# SYNOPSIS
#   AddVideoToPlaylist(parameters)
#
# ARGS
#   parameters      AddVideoToPlaylist - {http://services.sapo.pt/definitions}AddVideoToPlaylist
#
# RETURNS
#   parameters      AddVideoToPlaylistResponse - {http://services.sapo.pt/definitions}AddVideoToPlaylistResponse
#
parameters = nil
puts obj.addVideoToPlaylist(parameters)

# SYNOPSIS
#   CheckVideo(parameters)
#
# ARGS
#   parameters      CheckVideo - {http://services.sapo.pt/definitions}CheckVideo
#
# RETURNS
#   parameters      CheckVideoResponse - {http://services.sapo.pt/definitions}CheckVideoResponse
#
parameters = nil
puts obj.checkVideo(parameters)

# SYNOPSIS
#   CreateUser(parameters)
#
# ARGS
#   parameters      CreateUser - {http://services.sapo.pt/definitions}CreateUser
#
# RETURNS
#   parameters      CreateUserResponse - {http://services.sapo.pt/definitions}CreateUserResponse
#
parameters = nil
puts obj.createUser(parameters)

# SYNOPSIS
#   DeleteVideo(parameters)
#
# ARGS
#   parameters      DeleteVideo - {http://services.sapo.pt/definitions}DeleteVideo
#
# RETURNS
#   parameters      DeleteVideoResponse - {http://services.sapo.pt/definitions}DeleteVideoResponse
#
parameters = nil
puts obj.deleteVideo(parameters)

# SYNOPSIS
#   EditVideo(parameters)
#
# ARGS
#   parameters      EditVideo - {http://services.sapo.pt/definitions}EditVideo
#
# RETURNS
#   parameters      EditVideoResponse - {http://services.sapo.pt/definitions}EditVideoResponse
#
parameters = nil
puts obj.editVideo(parameters)

# SYNOPSIS
#   GetEncodeParameters(parameters)
#
# ARGS
#   parameters      GetEncodeParameters - {http://services.sapo.pt/definitions}GetEncodeParameters
#
# RETURNS
#   parameters      GetEncodeParametersResponse - {http://services.sapo.pt/definitions}GetEncodeParametersResponse
#
parameters = nil
puts obj.getEncodeParameters(parameters)

# SYNOPSIS
#   GetEncodeProfilesForUser(parameters)
#
# ARGS
#   parameters      GetEncodeProfilesForUser - {http://services.sapo.pt/definitions}GetEncodeProfilesForUser
#
# RETURNS
#   parameters      GetEncodeProfilesForUserResponse - {http://services.sapo.pt/definitions}GetEncodeProfilesForUserResponse
#
parameters = nil
puts obj.getEncodeProfilesForUser(parameters)

# SYNOPSIS
#   GetUserInfo(parameters)
#
# ARGS
#   parameters      GetUserInfo - {http://services.sapo.pt/definitions}GetUserInfo
#
# RETURNS
#   parameters      GetUserInfoResponse - {http://services.sapo.pt/definitions}GetUserInfoResponse
#
parameters = nil
puts obj.getUserInfo(parameters)

# SYNOPSIS
#   ListUserPlaylists(parameters)
#
# ARGS
#   parameters      ListUserPlaylists - {http://services.sapo.pt/definitions}ListUserPlaylists
#
# RETURNS
#   parameters      ListUserPlaylistsResponse - {http://services.sapo.pt/definitions}ListUserPlaylistsResponse
#
parameters = nil
puts obj.listUserPlaylists(parameters)

# SYNOPSIS
#   ListVideosFromPlaylist(parameters)
#
# ARGS
#   parameters      ListVideosFromPlaylist - {http://services.sapo.pt/definitions}ListVideosFromPlaylist
#
# RETURNS
#   parameters      ListVideosFromPlaylistResponse - {http://services.sapo.pt/definitions}ListVideosFromPlaylistResponse
#
parameters = nil
puts obj.listVideosFromPlaylist(parameters)

# SYNOPSIS
#   NotifyComment(parameters)
#
# ARGS
#   parameters      NotifyComment - {http://services.sapo.pt/definitions}NotifyComment
#
# RETURNS
#   parameters      NotifyCommentResponse - {http://services.sapo.pt/definitions}NotifyCommentResponse
#
parameters = nil
puts obj.notifyComment(parameters)

# SYNOPSIS
#   Query(parameters)
#
# ARGS
#   parameters      Query - {http://services.sapo.pt/definitions}Query
#
# RETURNS
#   parameters      QueryResponse - {http://services.sapo.pt/definitions}QueryResponse
#
parameters = nil
puts obj.query(parameters)

# SYNOPSIS
#   RemoveVideoFromPlaylist(parameters)
#
# ARGS
#   parameters      RemoveVideoFromPlaylist - {http://services.sapo.pt/definitions}RemoveVideoFromPlaylist
#
# RETURNS
#   parameters      RemoveVideoFromPlaylistResponse - {http://services.sapo.pt/definitions}RemoveVideoFromPlaylistResponse
#
parameters = nil
puts obj.removeVideoFromPlaylist(parameters)

# SYNOPSIS
#   ListCategories(parameters)
#
# ARGS
#   parameters      ListCategories - {http://services.sapo.pt/definitions}ListCategories
#
# RETURNS
#   parameters      ListCategoriesResponse - {http://services.sapo.pt/definitions}ListCategoriesResponse
#
parameters = nil
puts obj.listCategories(parameters)

# SYNOPSIS
#   AddVideo(parameters)
#
# ARGS
#   parameters      AddVideo - {http://services.sapo.pt/definitions}AddVideo
#
# RETURNS
#   parameters      AddVideoResponse - {http://services.sapo.pt/definitions}AddVideoResponse
#
parameters = nil
puts obj.addVideo(parameters)


endpoint_url = ARGV.shift
obj = VideosHttpGet.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddVideoPost(parameters)
#
# ARGS
#   parameters      AddVideoPost - {http://services.sapo.pt/definitions}AddVideoPost
#
# RETURNS
#   parameters      AddVideoPostResponse - {http://services.sapo.pt/definitions}AddVideoPostResponse
#
parameters = nil
puts obj.addVideoPost(parameters)

# SYNOPSIS
#   AddVideoToPlaylist(parameters)
#
# ARGS
#   parameters      AddVideoToPlaylist - {http://services.sapo.pt/definitions}AddVideoToPlaylist
#
# RETURNS
#   parameters      AddVideoToPlaylistResponse - {http://services.sapo.pt/definitions}AddVideoToPlaylistResponse
#
parameters = nil
puts obj.addVideoToPlaylist(parameters)

# SYNOPSIS
#   CheckVideo(parameters)
#
# ARGS
#   parameters      CheckVideo - {http://services.sapo.pt/definitions}CheckVideo
#
# RETURNS
#   parameters      CheckVideoResponse - {http://services.sapo.pt/definitions}CheckVideoResponse
#
parameters = nil
puts obj.checkVideo(parameters)

# SYNOPSIS
#   CreateUser(parameters)
#
# ARGS
#   parameters      CreateUser - {http://services.sapo.pt/definitions}CreateUser
#
# RETURNS
#   parameters      CreateUserResponse - {http://services.sapo.pt/definitions}CreateUserResponse
#
parameters = nil
puts obj.createUser(parameters)

# SYNOPSIS
#   DeleteVideo(parameters)
#
# ARGS
#   parameters      DeleteVideo - {http://services.sapo.pt/definitions}DeleteVideo
#
# RETURNS
#   parameters      DeleteVideoResponse - {http://services.sapo.pt/definitions}DeleteVideoResponse
#
parameters = nil
puts obj.deleteVideo(parameters)

# SYNOPSIS
#   EditVideo(parameters)
#
# ARGS
#   parameters      EditVideo - {http://services.sapo.pt/definitions}EditVideo
#
# RETURNS
#   parameters      EditVideoResponse - {http://services.sapo.pt/definitions}EditVideoResponse
#
parameters = nil
puts obj.editVideo(parameters)

# SYNOPSIS
#   GetEncodeParameters(parameters)
#
# ARGS
#   parameters      GetEncodeParameters - {http://services.sapo.pt/definitions}GetEncodeParameters
#
# RETURNS
#   parameters      GetEncodeParametersResponse - {http://services.sapo.pt/definitions}GetEncodeParametersResponse
#
parameters = nil
puts obj.getEncodeParameters(parameters)

# SYNOPSIS
#   GetEncodeProfilesForUser(parameters)
#
# ARGS
#   parameters      GetEncodeProfilesForUser - {http://services.sapo.pt/definitions}GetEncodeProfilesForUser
#
# RETURNS
#   parameters      GetEncodeProfilesForUserResponse - {http://services.sapo.pt/definitions}GetEncodeProfilesForUserResponse
#
parameters = nil
puts obj.getEncodeProfilesForUser(parameters)

# SYNOPSIS
#   GetUserInfo(parameters)
#
# ARGS
#   parameters      GetUserInfo - {http://services.sapo.pt/definitions}GetUserInfo
#
# RETURNS
#   parameters      GetUserInfoResponse - {http://services.sapo.pt/definitions}GetUserInfoResponse
#
parameters = nil
puts obj.getUserInfo(parameters)

# SYNOPSIS
#   ListUserPlaylists(parameters)
#
# ARGS
#   parameters      ListUserPlaylists - {http://services.sapo.pt/definitions}ListUserPlaylists
#
# RETURNS
#   parameters      ListUserPlaylistsResponse - {http://services.sapo.pt/definitions}ListUserPlaylistsResponse
#
parameters = nil
puts obj.listUserPlaylists(parameters)

# SYNOPSIS
#   ListVideosFromPlaylist(parameters)
#
# ARGS
#   parameters      ListVideosFromPlaylist - {http://services.sapo.pt/definitions}ListVideosFromPlaylist
#
# RETURNS
#   parameters      ListVideosFromPlaylistResponse - {http://services.sapo.pt/definitions}ListVideosFromPlaylistResponse
#
parameters = nil
puts obj.listVideosFromPlaylist(parameters)

# SYNOPSIS
#   NotifyComment(parameters)
#
# ARGS
#   parameters      NotifyComment - {http://services.sapo.pt/definitions}NotifyComment
#
# RETURNS
#   parameters      NotifyCommentResponse - {http://services.sapo.pt/definitions}NotifyCommentResponse
#
parameters = nil
puts obj.notifyComment(parameters)

# SYNOPSIS
#   Query(parameters)
#
# ARGS
#   parameters      Query - {http://services.sapo.pt/definitions}Query
#
# RETURNS
#   parameters      QueryResponse - {http://services.sapo.pt/definitions}QueryResponse
#
parameters = nil
puts obj.query(parameters)

# SYNOPSIS
#   RemoveVideoFromPlaylist(parameters)
#
# ARGS
#   parameters      RemoveVideoFromPlaylist - {http://services.sapo.pt/definitions}RemoveVideoFromPlaylist
#
# RETURNS
#   parameters      RemoveVideoFromPlaylistResponse - {http://services.sapo.pt/definitions}RemoveVideoFromPlaylistResponse
#
parameters = nil
puts obj.removeVideoFromPlaylist(parameters)

# SYNOPSIS
#   ListCategories(parameters)
#
# ARGS
#   parameters      ListCategories - {http://services.sapo.pt/definitions}ListCategories
#
# RETURNS
#   parameters      ListCategoriesResponse - {http://services.sapo.pt/definitions}ListCategoriesResponse
#
parameters = nil
puts obj.listCategories(parameters)

# SYNOPSIS
#   AddVideo(parameters)
#
# ARGS
#   parameters      AddVideo - {http://services.sapo.pt/definitions}AddVideo
#
# RETURNS
#   parameters      AddVideoResponse - {http://services.sapo.pt/definitions}AddVideoResponse
#
parameters = nil
puts obj.addVideo(parameters)


endpoint_url = ARGV.shift
obj = VideosHttpPost.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddVideoPost(parameters)
#
# ARGS
#   parameters      AddVideoPost - {http://services.sapo.pt/definitions}AddVideoPost
#
# RETURNS
#   parameters      AddVideoPostResponse - {http://services.sapo.pt/definitions}AddVideoPostResponse
#
parameters = nil
puts obj.addVideoPost(parameters)

# SYNOPSIS
#   AddVideoToPlaylist(parameters)
#
# ARGS
#   parameters      AddVideoToPlaylist - {http://services.sapo.pt/definitions}AddVideoToPlaylist
#
# RETURNS
#   parameters      AddVideoToPlaylistResponse - {http://services.sapo.pt/definitions}AddVideoToPlaylistResponse
#
parameters = nil
puts obj.addVideoToPlaylist(parameters)

# SYNOPSIS
#   CheckVideo(parameters)
#
# ARGS
#   parameters      CheckVideo - {http://services.sapo.pt/definitions}CheckVideo
#
# RETURNS
#   parameters      CheckVideoResponse - {http://services.sapo.pt/definitions}CheckVideoResponse
#
parameters = nil
puts obj.checkVideo(parameters)

# SYNOPSIS
#   CreateUser(parameters)
#
# ARGS
#   parameters      CreateUser - {http://services.sapo.pt/definitions}CreateUser
#
# RETURNS
#   parameters      CreateUserResponse - {http://services.sapo.pt/definitions}CreateUserResponse
#
parameters = nil
puts obj.createUser(parameters)

# SYNOPSIS
#   DeleteVideo(parameters)
#
# ARGS
#   parameters      DeleteVideo - {http://services.sapo.pt/definitions}DeleteVideo
#
# RETURNS
#   parameters      DeleteVideoResponse - {http://services.sapo.pt/definitions}DeleteVideoResponse
#
parameters = nil
puts obj.deleteVideo(parameters)

# SYNOPSIS
#   EditVideo(parameters)
#
# ARGS
#   parameters      EditVideo - {http://services.sapo.pt/definitions}EditVideo
#
# RETURNS
#   parameters      EditVideoResponse - {http://services.sapo.pt/definitions}EditVideoResponse
#
parameters = nil
puts obj.editVideo(parameters)

# SYNOPSIS
#   GetEncodeParameters(parameters)
#
# ARGS
#   parameters      GetEncodeParameters - {http://services.sapo.pt/definitions}GetEncodeParameters
#
# RETURNS
#   parameters      GetEncodeParametersResponse - {http://services.sapo.pt/definitions}GetEncodeParametersResponse
#
parameters = nil
puts obj.getEncodeParameters(parameters)

# SYNOPSIS
#   GetEncodeProfilesForUser(parameters)
#
# ARGS
#   parameters      GetEncodeProfilesForUser - {http://services.sapo.pt/definitions}GetEncodeProfilesForUser
#
# RETURNS
#   parameters      GetEncodeProfilesForUserResponse - {http://services.sapo.pt/definitions}GetEncodeProfilesForUserResponse
#
parameters = nil
puts obj.getEncodeProfilesForUser(parameters)

# SYNOPSIS
#   GetUserInfo(parameters)
#
# ARGS
#   parameters      GetUserInfo - {http://services.sapo.pt/definitions}GetUserInfo
#
# RETURNS
#   parameters      GetUserInfoResponse - {http://services.sapo.pt/definitions}GetUserInfoResponse
#
parameters = nil
puts obj.getUserInfo(parameters)

# SYNOPSIS
#   ListUserPlaylists(parameters)
#
# ARGS
#   parameters      ListUserPlaylists - {http://services.sapo.pt/definitions}ListUserPlaylists
#
# RETURNS
#   parameters      ListUserPlaylistsResponse - {http://services.sapo.pt/definitions}ListUserPlaylistsResponse
#
parameters = nil
puts obj.listUserPlaylists(parameters)

# SYNOPSIS
#   ListVideosFromPlaylist(parameters)
#
# ARGS
#   parameters      ListVideosFromPlaylist - {http://services.sapo.pt/definitions}ListVideosFromPlaylist
#
# RETURNS
#   parameters      ListVideosFromPlaylistResponse - {http://services.sapo.pt/definitions}ListVideosFromPlaylistResponse
#
parameters = nil
puts obj.listVideosFromPlaylist(parameters)

# SYNOPSIS
#   NotifyComment(parameters)
#
# ARGS
#   parameters      NotifyComment - {http://services.sapo.pt/definitions}NotifyComment
#
# RETURNS
#   parameters      NotifyCommentResponse - {http://services.sapo.pt/definitions}NotifyCommentResponse
#
parameters = nil
puts obj.notifyComment(parameters)

# SYNOPSIS
#   Query(parameters)
#
# ARGS
#   parameters      Query - {http://services.sapo.pt/definitions}Query
#
# RETURNS
#   parameters      QueryResponse - {http://services.sapo.pt/definitions}QueryResponse
#
parameters = nil
puts obj.query(parameters)

# SYNOPSIS
#   RemoveVideoFromPlaylist(parameters)
#
# ARGS
#   parameters      RemoveVideoFromPlaylist - {http://services.sapo.pt/definitions}RemoveVideoFromPlaylist
#
# RETURNS
#   parameters      RemoveVideoFromPlaylistResponse - {http://services.sapo.pt/definitions}RemoveVideoFromPlaylistResponse
#
parameters = nil
puts obj.removeVideoFromPlaylist(parameters)

# SYNOPSIS
#   ListCategories(parameters)
#
# ARGS
#   parameters      ListCategories - {http://services.sapo.pt/definitions}ListCategories
#
# RETURNS
#   parameters      ListCategoriesResponse - {http://services.sapo.pt/definitions}ListCategoriesResponse
#
parameters = nil
puts obj.listCategories(parameters)

# SYNOPSIS
#   AddVideo(parameters)
#
# ARGS
#   parameters      AddVideo - {http://services.sapo.pt/definitions}AddVideo
#
# RETURNS
#   parameters      AddVideoResponse - {http://services.sapo.pt/definitions}AddVideoResponse
#
parameters = nil
puts obj.addVideo(parameters)


