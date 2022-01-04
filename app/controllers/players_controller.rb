class PlayersController < ApplicationController

	before_action :set_player, only: [:update, :edit, :show]
  
	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		if @player.save!
      flash.now[:notice] = 'Player get created!'
		else
      flash.now[:error] = 'Player can not be created!'
		end
		redirect_to root_path
	end

	def edit
	end

	def update
		begin
			@player.update!(player_params)
			flash.now[:notice] = "Details got updated!"
		rescue => e
			e.record.errors.full_messages.each do |msg|
				@player.errors.add(:base, msg)
			end
		end
    respond_to do |format|
      format.js
    end
	end

	def show
	end

	private

	def set_player
		@player = Player.find(params[:id])
	end

	def player_params
		params.require(:player).permit(Player.columns.map(&:name))
	end
end
