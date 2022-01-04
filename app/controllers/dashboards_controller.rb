class DashboardsController < ApplicationController

	def index
		@players = Player.order(avg_score: :desc).limit(10)
	end
end
