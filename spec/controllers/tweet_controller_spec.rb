require 'spec_helper'

describe TweetsController do 

	describe 'GET index' do
		it 'is successful' do
			get :index
			expect(response.code).to eq '200'
		end
	end
end

