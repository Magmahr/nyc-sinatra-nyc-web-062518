class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

   get '/figures/new' do
     @figures = Figure.all
     erb :'figures/new'
   end

   post '/figures/:id' do
     @figures = Figure.find(params[:id])
     erb :'figures/show'
   end

   get '/figures/:id' do
     @figure = Figure.find(params[:id])
     erb :'figures/show'
   end

   get '/figures/:id/edit' do
     @figure = Figure.find(params[:id])
     erb :'figures/edit'
   end

end
