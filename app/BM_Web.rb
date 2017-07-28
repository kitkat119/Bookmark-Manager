ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'data_mapper_setup'

class BMWeb < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
      link = Link.new(url: params[:url], title: params[:title])
      params[:tags].split(',').each do |tag|
        link.tags << Tag.first_or_create(name: tag)
      end
      # tag = Tag.first_or_create(name: params[:tags].)
      # link.tags << tag
      link.save
      redirect '/links'
  end

  post '/links/bubbles' do
    @tag = Tag.first(name: params[:search])
    @links = @tag ? @tag.links : []
    erb :'links/bubbles'
  end

  run! if app_file == $0
end
