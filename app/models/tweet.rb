class Tweet < ActiveRecord::Base
	validates_length_of :body, minimum: 0, maximum: 140
end
