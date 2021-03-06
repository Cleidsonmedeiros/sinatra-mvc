class AbstractModel
    TABLE_NAME = nil

    def self.all
        db = SQLite3::Database.new "./db/blog.db"
        db.execute "select * from #{self::TABLE_NAME}"
        
    end

    def self.db
        SQLite3::Database.new "./db/blog.db"
    end

    def self.find(id)
        result = db.execute "select * from #{self::TABLE_NAME} where id=? limit 1", [id]
        result.first
    end

end