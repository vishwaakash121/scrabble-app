class Player < ApplicationRecord
	has_many :match_players
	has_many :matches, through: :match_players, source: :match
	has_many :scores
	belongs_to :best_match, class_name: "Match"
end
