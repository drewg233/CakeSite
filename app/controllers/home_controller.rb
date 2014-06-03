require 'open-uri'
require 'json'

class HomeController < ApplicationController
	def index
		@mobile_pictures = Picture.where(pictype: 1)
		@cupcake_pictures = Picture.where(pictype: 2)
		@baby_shower_pictures = Picture.where(pictype: 3)
		@birthday_cake_pictures = Picture.where(pictype: 4)
		@graduation_cake_pictures = Picture.where(pictype: 5)
		@grooms_cake_pictures = Picture.where(pictype: 6)
		@bridal_cake_pictures = Picture.where(pictype: 7)
	end
end
