#!/usr/bin/env ruby
require 'rubygems'
require 'twibot'
require 'open-uri'
bot = Twibot::Bot.new(Twibot::Config.default)

reply "check :uri" do |status,params|
  if (URI.parse(params[:uri]).scheme == "http")
    begin
      open(params[:uri])
      post_tweet "@#{status.user.screen_name} #{params[:uri]} seems to be up"
    rescue Exception => e
      post_tweet "@#{status.user.screen_name} #{params[:uri]} seems to be down"
    end
  else
    post_tweet "@#{status.user.screen_name} #{params[:uri]} seems to be invalid url"
  end
end