class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]
		@randomfont=params[:font]
		my_artii=Artii::Base.new :font => @randomfont
		@printme=my_artii.asciify(@text)
		
		render 'results'
	end
end
