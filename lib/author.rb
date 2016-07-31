class Author
  attr_accessor :name, :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    self.posts.last.author = self
    @@post_count += self.posts.count
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.posts << post
    self.posts.last.author = self
    @@post_count += self.posts.count
  end

  def self.post_count
    @@post_count
  end
end