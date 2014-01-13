require 'spec_helper'

describe TweetsController do 
	let!(:twit) {Tweet.create(author:'me', body: 'hellooooo world') }

	describe 'GET index' do

		it 'is successful' do
			get :index
			expect(response.code).to eq '200'
		end

		it 'assigns @tweets' do
			get :index
			expect(assigns(:tweets)).to eq ([twit])
			# expect(assigns(@tweets).first).to be_an_instance_of Tweet 
		end 

		it 'renders the index template' do
			get :index
			expect(response).to render_template ('index')
		end
	end

	describe 'POST create' do

		it 'redirects to a show template' do 
			post :create, tweet: { author:'me', body: 'hellooooo world'}
			expect(response).to redirect_to tweet_show_path(assigns(:twit).id)
		end



		# it 'only accepts authorized parameters' do 
		# 	post :create, tweet: Tweet.create(author:'me', body: 'hellooooo world', location: 'Seattle')
		# 	expect(:tweet).to be_invalid
		# end

		context 'when invalid' do 

			it 'renders the new template' do
				post :create, tweet: {author: 'me'} 
				expect(response).to render_template :new
			end
		end
	end

	describe 'GET show' do 

		it 'is successful' do 
			get :show
			expect(response).to eq '200'
		end
	end
end

