class Characterline < ApplicationRecord
	belongs_to :project

	
	validates :character, presence: true
	validates :line, presence: true
end
