class DashboardsController < ApplicationController

	def index
		@players = Player.order(avg_score: :asc).limit(10)
	end
end
