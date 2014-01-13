class Tweet < ActiveRecord::Base
	validates_length_of :body, minimum: 1, maximum: 140
	validates :author, presence: true
end
