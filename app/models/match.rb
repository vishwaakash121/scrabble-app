class Match < ApplicationRecord
	belongs_to :winner, class_name: "Player"
	has_many :match_players
	has_many :players, through: :match_players, source: :player
	has_many :scores
end
