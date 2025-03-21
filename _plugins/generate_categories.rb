module Jekyll
	class CategoryPageGenerator < Generator
	  safe true
  
	  def generate(site)
		site.categories.each do |category, posts|
		  Jekyll.logger.info "Generating category page for:", category
		  site.pages << CategoryPage.new(site, site.source, category, posts)
		end
	  end
	end
  
	class CategoryPage < Page
	  def initialize(site, base, category, posts)
		@site = site
		@base = base
		@dir  = "blog/category/#{category}"
		@name = "index.html"
  
		self.process(@name)
		self.read_yaml(File.join(base, "_layouts"), "category.html")
		self.data["category"] = category
		self.data["title"] = "Posts in #{category.capitalize}"
		self.data["posts"] = posts
	  end
	end
  end