class User < AbstractModel
    TABLE_NAME = "users"

    def self.create(name, email)
        db.execute "INSERT INTO users(name, email) VALUES(?, ?)", [name, email]
        result = db.execute "select id from users order by id desc limit 1"
        result.first.first
    end

end