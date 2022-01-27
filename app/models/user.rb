class User < AbstractModel
    TABLE_NAME = "users"

    def self.create(name, email)
        db.execute "INSERT INTO users(name, email) VALUES(?, ?)", [name, email]
    end
end