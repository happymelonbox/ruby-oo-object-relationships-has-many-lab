class Author

    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
        @posts << new_post
    end


    def self.post_count
        posts = Post.all
        posts.size
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

end