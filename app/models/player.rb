class Player < ApplicationRecord
	has_many :match_players
	has_many :matches, through: :match_players, source: :match
	has_many :scores
end
