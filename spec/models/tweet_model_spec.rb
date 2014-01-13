require 'spec_helper' 

describe Tweet do 

	describe 'validations' do 

		it 'must have an author' do 
			tweet = Tweet.create(body: 'hellooo world')
			expect(tweet).to be_invalid
		end

		it 'must have a body' do 
			tweet = Tweet.create(author: 'me')
			expect(tweet).to be_invalid
		end

		it 'has a body not over 140 characters' do 
			invalid_tweet = Tweet.create(body: 'Tweeting is for twitters, and twitters is for tweeting. 140 characters is not very long unless you have to write a test for it, then it seems like forever.')
			expect(invalid_tweet.valid?).to eq false
		end
	end
end