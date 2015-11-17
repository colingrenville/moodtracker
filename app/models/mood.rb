class Mood < ActiveRecord::Base
	validates :mood, numericality: {only_integer: true}
end
