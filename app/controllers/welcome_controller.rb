class WelcomeController < ApplicationController
	def index
		render json: { status: 200, message: "Game Diary API" }
	  end
end
