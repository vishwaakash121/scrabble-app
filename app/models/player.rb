class Player < ApplicationRecord
	has_many :match_players
	has_many :matches, through: :match_players, source: :match
	has_many :scores
	belongs_to :best_match, class_name: "Match", optional: true
	validates :phone_no,:presence => true,
							:numericality => true,
							:length => { :minimum => 10, :maximum => 12 }

	def highest_score
		scores.find_by(match: best_match)&.score&.to_f
	end

	def get_opponent_player
		best_match.players.where.not(id: self.id)&.last&.name
	end
end
