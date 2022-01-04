class PlayersController < ApplicationController

	before_action :set_player, only: [:update, :edit, :show]
  
	def new
		@player = Player.new
	end

	def create
		
	end

	def edit
	end

	def update
	end

	private

	def set_player
		@player = Player.find(params[:id])
	end
end
