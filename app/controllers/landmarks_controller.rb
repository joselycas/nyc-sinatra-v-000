class LandmarksController < ApplicationController

  get '/landmark' do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  get '/landmarks/new' do
   erb :"landmarks/new"
 end

 get '/landmarks/:id' do
   @landmark = Landmark.find(params[:id])
   erb :"landmarks/show"
 end

 post '/landmarks' do
   @landmark = Landmark.create(params[:landmark])
   redirect ("/landmarks/#{@landmark.id}")
 end

end
