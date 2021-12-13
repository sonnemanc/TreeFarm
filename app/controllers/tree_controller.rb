class TreeController < ApplicationController

    get '/trees' do
        @trees = Tree.all
        erb :'/trees/trees'
    end
end