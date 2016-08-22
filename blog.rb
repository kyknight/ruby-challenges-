class Blog

	@@all_blog_posts = []
	@@total_blog_posts = 0

	def self.all
		@@all_blog_posts
	end

	def self.add(stuff)
		@@all_blog_posts << stuff
		@@total_blog_posts += 1
	end

	def self_pub
		@@all_blog_posts.each do |post|
			puts "Title - \n #{post.title}"
			puts "Content - \n #{post.content}"
			puts "Publish Date - \n #{post.created}"
		end
	end
end

class BlogPost < Blog

	def self.created
		post = new
		puts "What is the name of your blog?"
		post.title = gets.chomp
		puts "What is your blog content?"
		post.content = gets.chomp
		post.created = Time.now
		post.save
		puts "Do you want to create another post? [Y/N]"
		created if (gets.chomp.downcase == 'y')
	end

	def title
		@title
	end
	def title=(title)
		@title = title
	end

	def created
		@created
	end
	def created=(created)
		@created = created
	end

	def content
		@content
	end
	def content=(content)
		@content = content
	end

	def save
		BlogPost.add(self)
	end
end

BlogPost.created
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish 
