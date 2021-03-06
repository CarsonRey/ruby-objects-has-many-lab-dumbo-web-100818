class Author
  attr_accessor :name
  @@posts = []

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @@posts << title
  end

  def self.post_count
    @@posts.count
  end

end
