class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @wpm = (@word_count/275)
    @wps = ((@word_count*60)/275)
    @words = @text.split(" ")
    @frequency = Hash.new(0)
  	@words.each { |word| @frequency[word.downcase] += 1 }

    render 'results'
  	end

end
