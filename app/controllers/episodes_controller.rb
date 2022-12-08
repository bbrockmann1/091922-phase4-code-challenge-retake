class EpisodesController < ApplicationController
    def index 
        episodes = Episode.all
        render json: episodes, each_serializer: GuestsSerializer, status: :ok
    end

    def show 
        episode = Episode.find(params[:id])
        render json: episode, status: :ok
    end

    def destroy 
        episode = Episode.find(params[:id])
        episode.destroy
        head :no_content
    end
end
