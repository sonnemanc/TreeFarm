class LightController < ApplicationController

    get '/lights' do
        @lights = Light.all
        erb :'lights/lights'
    end

    get '/lights/new' do
        @lights = Light.all
        erb :'lights/new'
    end

    post '/lights' do
        Light.create(color: params["light"]["color"])
        redirect '/lights'
    end

    get '/lights/:id' do
        @light = Light.find(params[:id])
        erb :'/lights/show'
    end

    get '/lights/:id/edit' do
        @light = Light.find(params[:id])
        erb :'/lights/edit'
    end

    post '/lights/:id' do
        @light = Light.find(params[:id])
        @light.color = params['light']['color']
        @light.save
        redirect to "lights/#{@light.id}"
    end

end