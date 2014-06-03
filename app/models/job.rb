require 'open-uri'
require 'json'

class Job < ActiveRecord::Base

	def self.get_mobile
		Picture.delete_all
		# Grabs mobile uploads
		count = 0

		file_log = File.open("photos", "w")
		url = "https://graph.facebook.com/397597573673351?fields=photos"
		first_page_posts = JSON.parse(open(URI.encode(url)).read)

		#first page (special case)
		first_page_posts['photos']['data'].each do |post|
		  puts post['images'][0]['source']
		  file_log.puts post['images'][0]['source']

			object = Picture.new(:url => post['images'][0]['source'])
			object.save

		  count = count + 1
		  puts "#{count} photos downloaded"
		end

		#succceeding pages

		page_posts = {}
		page_posts['paging'] = {}
		page_posts['paging']['next'] = first_page_posts['photos']['paging']['next']

		while !page_posts['paging'].nil?
			if !page_posts['paging']['next'].nil?
			  puts "fetching next page of photos..."
			  page_posts = JSON.parse(open(URI.encode(page_posts['paging']['next'])).read)
			  page_posts['data'].each do |post|
			    puts post['images'][0]['source']
			    file_log.puts post['images'][0]['source']
			    
			    object = Picture.new(:url => post['images'][0]['source'])
			    object.save

			    count = count + 1
			    puts "#{count} photos downloaded"
			  end
			else
				break
			end
		end
		get_cupcakes
	end

	def self.get_cupcakes
		# Grabs mobile uploads
		count = 0

		file_log = File.open("photos", "w")
		url = "https://graph.facebook.com/228688580564252?fields=photos"
		first_page_posts = JSON.parse(open(URI.encode(url)).read)

		#first page (special case)
		first_page_posts['photos']['data'].each do |post|
		  puts post['images'][0]['source']
		  file_log.puts post['images'][0]['source']

			object = Picture.new(:url => post['images'][0]['source'], :pictype => 2)
			object.save

		  count = count + 1
		  puts "#{count} photos downloaded"
		end

		#succceeding pages

		page_posts = {}
		page_posts['paging'] = {}
		page_posts['paging']['next'] = first_page_posts['photos']['paging']['next']

		while !page_posts['paging'].nil?
			if !page_posts['paging']['next'].nil?
			  puts "fetching next page of photos..."
			  page_posts = JSON.parse(open(URI.encode(page_posts['paging']['next'])).read)
			  page_posts['data'].each do |post|
			    puts post['images'][0]['source']
			    file_log.puts post['images'][0]['source']
			    
			    object = Picture.new(:url => post['images'][0]['source'], :pictype => 2)
			    object.save

			    count = count + 1
			    puts "#{count} photos downloaded"
			  end
			else
				break
			end
		end
		get_baby_shower
	end

	def self.get_baby_shower
		# Grabs mobile uploads
		count = 0

		file_log = File.open("photos", "w")
		url = "https://graph.facebook.com/228689660564144?fields=photos"
		first_page_posts = JSON.parse(open(URI.encode(url)).read)

		#first page (special case)
		first_page_posts['photos']['data'].each do |post|
		  puts post['images'][0]['source']
		  file_log.puts post['images'][0]['source']

			object = Picture.new(:url => post['images'][0]['source'], :pictype => 3)
			object.save

		  count = count + 1
		  puts "#{count} photos downloaded"
		end

		#succceeding pages

		page_posts = {}
		page_posts['paging'] = {}
		page_posts['paging']['next'] = first_page_posts['photos']['paging']['next']

		while !page_posts['paging'].nil?
			if !page_posts['paging']['next'].nil?
			  puts "fetching next page of photos..."
			  page_posts = JSON.parse(open(URI.encode(page_posts['paging']['next'])).read)
			  page_posts['data'].each do |post|
			    puts post['images'][0]['source']
			    file_log.puts post['images'][0]['source']
			    
			    object = Picture.new(:url => post['images'][0]['source'], :pictype => 3)
			    object.save

			    count = count + 1
			    puts "#{count} photos downloaded"
			  end
			else
				break
			end
		end
			birthday_cakes # Go to next method here
	end

	def self.birthday_cakes
		# Grabs mobile uploads
		count = 0

		file_log = File.open("photos", "w")
		url = "https://graph.facebook.com/185632761536501?fields=photos"
		first_page_posts = JSON.parse(open(URI.encode(url)).read)

		#first page (special case)
		first_page_posts['photos']['data'].each do |post|
		  puts post['images'][0]['source']
		  file_log.puts post['images'][0]['source']

			object = Picture.new(:url => post['images'][0]['source'], :pictype => 4)
			object.save

		  count = count + 1
		  puts "#{count} photos downloaded"
		end

		#succceeding pages

		page_posts = {}
		page_posts['paging'] = {}
		page_posts['paging']['next'] = first_page_posts['photos']['paging']['next']

		while !page_posts['paging'].nil?
			if !page_posts['paging']['next'].nil?
			  puts "fetching next page of photos..."
			  page_posts = JSON.parse(open(URI.encode(page_posts['paging']['next'])).read)
			  page_posts['data'].each do |post|
			    puts post['images'][0]['source']
			    file_log.puts post['images'][0]['source']
			    
			    object = Picture.new(:url => post['images'][0]['source'], :pictype => 4)
			    object.save

			    count = count + 1
			    puts "#{count} photos downloaded"
			  end
			else
				break
			end
		end
			graduation_cakes # Go to next method here
	end


	def self.graduation_cakes
		# Grabs mobile uploads
		count = 0

		file_log = File.open("photos", "w")
		url = "https://graph.facebook.com/228691110563999?fields=photos"
		first_page_posts = JSON.parse(open(URI.encode(url)).read)

		#first page (special case)
		first_page_posts['photos']['data'].each do |post|
		  puts post['images'][0]['source']
		  file_log.puts post['images'][0]['source']

			object = Picture.new(:url => post['images'][0]['source'], :pictype => 5)
			object.save

		  count = count + 1
		  puts "#{count} photos downloaded"
		end

		#succceeding pages

		page_posts = {}
		page_posts['paging'] = {}
		page_posts['paging']['next'] = first_page_posts['photos']['paging']['next']

		while !page_posts['paging'].nil?
			if !page_posts['paging']['next'].nil?
			  puts "fetching next page of photos..."
			  page_posts = JSON.parse(open(URI.encode(page_posts['paging']['next'])).read)
			  page_posts['data'].each do |post|
			    puts post['images'][0]['source']
			    file_log.puts post['images'][0]['source']
			    
			    object = Picture.new(:url => post['images'][0]['source'], :pictype => 5)
			    object.save

			    count = count + 1
			    puts "#{count} photos downloaded"
			  end
			else
				break
			end
		end
			grooms_cakes # Go to next method here
	end

	def self.grooms_cakes
		# Grabs mobile uploads
		count = 0

		file_log = File.open("photos", "w")
		url = "https://graph.facebook.com/185710034862107?fields=photos"
		first_page_posts = JSON.parse(open(URI.encode(url)).read)

		#first page (special case)
		first_page_posts['photos']['data'].each do |post|
		  puts post['images'][0]['source']
		  file_log.puts post['images'][0]['source']

			object = Picture.new(:url => post['images'][0]['source'], :pictype => 6)
			object.save

		  count = count + 1
		  puts "#{count} photos downloaded"
		end

		#succceeding pages

		page_posts = {}
		page_posts['paging'] = {}
		page_posts['paging']['next'] = first_page_posts['photos']['paging']['next']

		while !page_posts['paging'].nil?
			if !page_posts['paging']['next'].nil?
			  puts "fetching next page of photos..."
			  page_posts = JSON.parse(open(URI.encode(page_posts['paging']['next'])).read)
			  page_posts['data'].each do |post|
			    puts post['images'][0]['source']
			    file_log.puts post['images'][0]['source']
			    
			    object = Picture.new(:url => post['images'][0]['source'], :pictype => 6)
			    object.save

			    count = count + 1
			    puts "#{count} photos downloaded"
			  end
			else
				break
			end
		end
			bridal_cakes # Go to next method here
	end

	def self.bridal_cakes
		# Grabs mobile uploads
		count = 0

		file_log = File.open("photos", "w")
		url = "https://graph.facebook.com/185704741529303?fields=photos"
		first_page_posts = JSON.parse(open(URI.encode(url)).read)

		#first page (special case)
		first_page_posts['photos']['data'].each do |post|
		  puts post['images'][0]['source']
		  file_log.puts post['images'][0]['source']

			object = Picture.new(:url => post['images'][0]['source'], :pictype => 7)
			object.save

		  count = count + 1
		  puts "#{count} photos downloaded"
		end

		#succceeding pages

		page_posts = {}
		page_posts['paging'] = {}
		page_posts['paging']['next'] = first_page_posts['photos']['paging']['next']

		while !page_posts['paging'].nil?
			if !page_posts['paging']['next'].nil?
			  puts "fetching next page of photos..."
			  page_posts = JSON.parse(open(URI.encode(page_posts['paging']['next'])).read)
			  page_posts['data'].each do |post|
			    puts post['images'][0]['source']
			    file_log.puts post['images'][0]['source']
			    
			    object = Picture.new(:url => post['images'][0]['source'], :pictype => 7)
			    object.save

			    count = count + 1
			    puts "#{count} photos downloaded"
			  end
			else
				break
			end
		end
			# Go to next method here
	end


end #Ends the class





