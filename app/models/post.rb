class Post < AbstractModel
    TABLE_NAME = "posts"

    def self.create(title, content)
        db.execute "INSERT INTO posts(title, content) VALUES(?, ?)" [title, content]    
    end
end