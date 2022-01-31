class User < AbstractModel
    TABLE_NAME = "users"

    def self.create(name, email)
        db.execute "INSERT INTO #{TABLE_NAME}(name, email) VALUES(?, ?)", [name, email]
        result = db.execute "select id from users order by id desc limit 1"
        result.first.first
    end

    def self.update(id, name, email)
        db.execute "UPDATE #{TABLE_NAME}
                    SET name=?, email=?
                    WHERE id=?", [name, email, id]
    end

end